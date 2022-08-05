package com.breze.config;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import java.util.Date;

/*
 * @Author tylt
 * @Description Jwt配置类
 * @Date 2022/2/5 11:57
 * @Copyright(c) 2022 , 青枫网络工作室
 **/

@Data
@Configuration
@ConfigurationProperties(prefix = "breeze.jwt")
public class JwtConfig {

    //给JWT起个名字方便后面获取
    private String header;
    //过期时间
    private long expire;

    private String secret;


    /** 生成jwt*/
    public String generateToken(String username) {

        Date nowDate = new Date();
        Date expireDate = new Date(nowDate.getTime() + 1000 * expire);

        return Jwts.builder()
                .setHeaderParam("typ", "JWT")
                .setSubject(username)
                .setIssuedAt(nowDate)
                // 设置7天过期
                .setExpiration(expireDate)
                .signWith(SignatureAlgorithm.HS512, secret)
                .compact();
    }

    /** 解析jwt */
    public Claims getClaimByToken(String jwt) {
        try {
            return Jwts.parser()
                    .setSigningKey(secret)
                    .parseClaimsJws(jwt)
                    .getBody();
        } catch (Exception e) {
            return null;
        }
    }

    /** 判断jwt是否过期 */
    public boolean isTokenExpired(Claims claims) {

        return claims.getExpiration().before(new Date());
    }

}
