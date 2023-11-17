package com.breze.utils;

import com.breze.common.exception.BrezeJwtException;
import com.breze.config.JwtConfig;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * @Author tylt6688
 * @Description Jwt工具类
 * @Date 2022/2/5 11:57
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Log4j2
@Component
public class JwtUtil {

    @Autowired
    JwtConfig jwtConfig;

    /**
     * 生成jwt
     *
     * @param username 用户名
     * @return String
     */
    public String generateToken(String username) {

        Date nowDate = new Date();
        Date expireDate = new Date(nowDate.getTime() + 1000 * jwtConfig.getExpire());

        return Jwts.builder()
                .setHeaderParam("typ", "JWT")
                .setSubject(username)
                .setIssuedAt(nowDate)
                // 设置过期时间(秒)
                .setExpiration(expireDate)
                .signWith(SignatureAlgorithm.HS512, jwtConfig.getSecret())
                .compact();
    }

    /**
     * 解析校验jwt
     *
     * @param token 密钥字符串
     * @return Claims
     */
    public Claims getClaimByToken(String token) {

        try {
            return Jwts.parser()
                    .setSigningKey(jwtConfig.getSecret())
                    .parseClaimsJws(token)
                    .getBody();
        }catch (ExpiredJwtException e){
            throw new BrezeJwtException("登录凭证失效");
        }
    }

    /**
     * 判断jwt是否过期
     *
     * @param claims JWT
     * @return Boolean
     */
    public Boolean isTokenExpired(Claims claims) {
        log.info("JWT是否过期:---{}", claims.getExpiration().before(new Date()));
        return claims.getExpiration().before(new Date());
    }
}
