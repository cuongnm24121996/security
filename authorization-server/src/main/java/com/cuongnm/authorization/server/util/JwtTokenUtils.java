package com.cuongnm.authorization.server.util;

import antlr.StringUtils;
import com.cuongnm.authorization.server.config.Constants;
import io.jsonwebtoken.Jwt;
import io.jsonwebtoken.Jwts;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.SecurityProperties;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.stereotype.Component;

import java.util.Map;
import java.util.Optional;

@Component
public class JwtTokenUtils {
    @Autowired
    private TokenStore tokenStore;
    private final SecurityProperties securityProperties;

    public JwtTokenUtils(SecurityProperties securityProperties) {
        this.securityProperties = securityProperties;
    }

    /**
     * get tenantId from token
     *
     * @return
     */
    public String getTenantIdFromToken() {
        return (String) getTokenInfo(Constants.TENANT_FORMAT);
    }

    /**
     * get token info
     * @param key
     * @return
     */
    public Object getTokenInfo(String key) {
        Optional<String> tokenValue = SecurityUtils.getTokenValue();
        if (!tokenValue.isPresent()) {
            return null;
        }
        final OAuth2AccessToken accessToken = tokenStore.readAccessToken(tokenValue.get());
        Map<String, Object> additionalInformation = accessToken.getAdditionalInformation();
        return additionalInformation.get(key);
    }
}
