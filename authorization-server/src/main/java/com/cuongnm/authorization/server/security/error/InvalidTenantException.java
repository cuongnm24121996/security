package com.cuongnm.authorization.server.security.error;

import org.springframework.security.oauth2.common.exceptions.ClientAuthenticationException;

public class InvalidTenantException extends ClientAuthenticationException {
    public InvalidTenantException(String msg, Throwable t) {
        super(msg, t);
    }

    public InvalidTenantException(String msg) {
        super(msg);
    }

    @Override
    public String getOAuth2ErrorCode() {
        return "401";
    }
}
