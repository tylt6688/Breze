package com.breze.utils;

import com.breze.common.consts.SecurityConstant;
import com.breze.config.TokenConfig;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * @Author tylt6688
 * @Description Jwt工具类
 * @Date 2022/2/5 11:57
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Log4j2
@Component
public class TokenUtil {

    @Autowired
    TokenConfig tokenConfig;

    public String getToken(HttpServletRequest request) {
        String token = request.getHeader(tokenConfig.getHeader());
        if (token!= null && token.startsWith(SecurityConstant.BREZE_TOKEN_PREFIX)) {
            return token.replace(SecurityConstant.BREZE_TOKEN_PREFIX, "");
        }
        else {
            return null;
        }

    }

    public Boolean verifyToken(String token) {
            return false;
    }

    /**
     * 通过去除前缀的token获取用户名
     */
    public String getUsernameFromToken(String token) {
        Claims claims = getClaimByToken(token);
        return claims.getSubject();
    }


    /**
     * 生成jwt
     *
     * @param username 用户名
     * @return String
     */
    public String generateToken(String username) {

        Date nowDate = new Date();
        Date expireDate = new Date(nowDate.getTime() + 1000 * tokenConfig.getExpire());

        return Jwts.builder()
                .setHeaderParam("typ", "JWT")
                .setSubject(username)
                .setIssuedAt(nowDate)
                // 设置过期时间(秒)
                .setExpiration(expireDate)
                .signWith(SignatureAlgorithm.HS512, tokenConfig.getSecret())
                .compact();
    }

    /**
     * 解析校验jwt
     *
     * @param token 密钥字符串
     * @return Claims
     */
    public Claims getClaimByToken(String token) {
        return Jwts.parser()
                .setSigningKey(tokenConfig.getSecret())
                .parseClaimsJws(token)
                .getBody();
    }
}
