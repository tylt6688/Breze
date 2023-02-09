package com.breze.security.handler;

import org.springframework.security.access.AccessDecisionManager;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;

import java.util.Collection;

@Component
public class AccessDecisionManagerImpl implements AccessDecisionManager {

    @Override
    public void decide(Authentication authentication, Object object, Collection<ConfigAttribute> configAttributes)
            throws AccessDeniedException {
        for (ConfigAttribute attribute : configAttributes) {
            if ("ROLE_SUPER_ADMIN".equals(attribute.getAttribute())) {
                if (!authentication.getAuthorities().contains(new SimpleGrantedAuthority("ROLE_SUPER_ADMIN"))) {
                    throw new AccessDeniedException("只有超级管理员可操作！");
                }
            }
        }
    }

    @Override
    public boolean supports(ConfigAttribute attribute) {
        return true;
    }

    @Override
    public boolean supports(Class<?> clazz) {
        return true;
    }
}
