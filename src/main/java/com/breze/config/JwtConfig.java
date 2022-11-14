package com.breze.config;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import lombok.Data;
import lombok.extern.log4j.Log4j2;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import java.io.Serializable;
import java.util.Date;

/**
 * @Author tylt6688
 * @Description Jwt配置类
 * @Date 2022/2/5 11:57
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Log4j2
@Data
@Configuration
@ConfigurationProperties(prefix = "breeze.jwt")
public class JwtConfig implements Serializable {

    private static final Long serialVersionUID = 13083965924334257L;

    // 给JWT起个名字方便后面获取
    private String header;
    // 过期时间
    private Long expire;
    // 密钥
    private String secret;


    /**
     * 生成jwt
     */
    public String generateToken(String username) {

        Date nowDate = new Date();
        Date expireDate = new Date(nowDate.getTime() + 1000 * expire);

        return Jwts.builder()
                .setHeaderParam("typ", "JWT")
                .setSubject(username)
                .setIssuedAt(nowDate)
                // 设置过期时间 7 天
                .setExpiration(expireDate)
                .signWith(SignatureAlgorithm.HS512, secret)
                .compact();
    }

    /**
     * 解析jwt
     */
    public Claims getClaimByToken(String jwt)  {
        Claims claims;
        try {
            claims = Jwts.parser()
                    .setSigningKey(secret)
                    .parseClaimsJws(jwt)
                    .getBody();
        } catch (JwtException e) {
            log.error("JWT格式验证失败----------{}", e.getMessage());
            // FIXME: 2022/11/14 22:29  这里需要抛出异常
            throw new JwtException("JWT格式验证失败");
        }
        return claims;
    }

    /**
     * 判断jwt是否过期
     */
    public Boolean isTokenExpired(Claims claims) {

        return claims.getExpiration().before(new Date());
    }

}
