package com.cuongnm.authorization.server.security;

import com.cuongnm.authorization.server.constant.Constants;
import com.cuongnm.authorization.server.model.User;
import com.cuongnm.authorization.server.tenant.TenantContextHolder;
import org.springframework.security.oauth2.common.DefaultOAuth2AccessToken;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.token.TokenEnhancer;

import java.util.HashMap;
import java.util.Map;

public class TenantAwareJwtAccessTokenConverter implements TokenEnhancer {

    @Override
    public OAuth2AccessToken enhance(OAuth2AccessToken oAuth2AccessToken, OAuth2Authentication oAuth2Authentication) {

        Map<String, Object> additionalInfo = new HashMap<>();
        User user = (User) oAuth2Authentication.getPrincipal();
        additionalInfo.put(Constants.TENANT_FORMAT, user.getTenantId());
        additionalInfo.put(Constants.EMAIL, user.getEmail());
        additionalInfo.put(Constants.PHONE, user.getPhone());
        ((DefaultOAuth2AccessToken) oAuth2AccessToken).setAdditionalInformation(additionalInfo);
        return oAuth2AccessToken;
    }
}
