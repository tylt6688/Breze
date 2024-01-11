package com.breze.utils;

import com.breze.common.consts.CacheConstant;
import com.breze.common.consts.SecurityConstant;
import com.breze.config.TokenConfig;
import com.breze.entity.bo.sys.LoginUserCacheBO;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Header;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.crypto.SecretKey;
import javax.servlet.http.HttpServletRequest;
import java.nio.charset.StandardCharsets;
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

    private final TokenConfig tokenConfig;

    private final RedisUtil redisUtil;

    @Autowired
    public TokenUtil(TokenConfig tokenConfig, RedisUtil redisUtil) {
        this.tokenConfig = tokenConfig;
        this.redisUtil = redisUtil;
    }

    /**
     * 从HttpServletRequest中获取token
     *
     * @param request HttpServletRequest
     */
    public String getTokenByRequest(HttpServletRequest request) {
        String token = request.getHeader(tokenConfig.getHeader());
        if (BrezeUtil.isNotNull(token) && token.startsWith(SecurityConstant.BREZE_TOKEN_PREFIX)) {
            token = token.replace(SecurityConstant.BREZE_TOKEN_PREFIX, "");
        }
        return token;
    }


    /**
     * 生成jwt
     *
     * @param username 用户名
     * @return String
     */
    public String generateToken(String username) {
        SecretKey secretKey = Keys.hmacShaKeyFor(tokenConfig.getSecret().getBytes(StandardCharsets.UTF_8));
        // 创建独立 Header头
        Header header = Jwts.header()
                // 密钥 ID
                .keyId(tokenConfig.getHeader())
                .add("typ", "JWT")
                // 可添加其他头信息
                .build();

        // 创建独立 Claims声明
        Claims claims = Jwts.claims()
                .add("platform", "Breze")
                .add("username", username)
                .build();

        Date nowDate = new Date();
        Date expireDate = new Date(nowDate.getTime() + tokenConfig.getExpire() * 1000);

        return Jwts.builder()
                .header().add(header)
                .and()
                .claims(claims)
                .subject(username) // 主题
                .issuedAt(nowDate)// 签发时间
                .expiration(expireDate)// 过期时间
                .signWith(secretKey, Jwts.SIG.HS512)
                .compact();
    }

    /**
     * 解析校验
     *
     * @param token 密钥字符串
     * @return Claims
     */
    public Claims parserToken(String token) {
        SecretKey secretKey = Keys.hmacShaKeyFor(tokenConfig.getSecret().getBytes(StandardCharsets.UTF_8));
        return Jwts.parser()
                .verifyWith(secretKey)
                .build()
                // 在不需要头信息的情况下，独立解析，需要头信息使用.parse(token)
                .parseSignedClaims(token)
                .getPayload();
    }

    /**
     * 通过jwt获取主题用户名
     */
    public String getSubjectByToken(String jwt) {
        Claims claims = parserToken(jwt);
        return claims.getSubject();
    }


    // FIXME 此处权限部分待优化
    public LoginUserCacheBO getLoginUser(HttpServletRequest request) {
        String token = getTokenByRequest(request);
        if (BrezeUtil.isNull(token)) {
            return null;
        }
        String username = getSubjectByToken(token);
        Object object = redisUtil.get(CacheConstant.AUTHORITY_CODE + username);
        log.info("获取用户信息：{}", object);
        if (BrezeUtil.isNull(object)) {
            return null;
        }

        LoginUserCacheBO loginUserCacheBO = new LoginUserCacheBO();
        loginUserCacheBO.setUsername(username);
        return loginUserCacheBO;

    }
}
