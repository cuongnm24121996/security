package com.cuongnm.authorization.server.util;

import com.cuongnm.authorization.server.config.SecurityProperties;
import com.cuongnm.authorization.server.constant.Constants;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwtParser;
import io.jsonwebtoken.Jwts;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.stereotype.Component;

import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

@Component
public class JwtTokenUtils {
    private final TokenStore tokenStore;
    private final JwtParser jwtParser;

    private static final String AUTHORITIES_KEY = "authorities";

    public JwtTokenUtils(TokenStore tokenStore, SecurityProperties securityProperties) {
        this.tokenStore = tokenStore;
        this.jwtParser = Jwts.parserBuilder().setSigningKey(securityProperties.getJwt().getBase64Secret()).build();
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
     *
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
