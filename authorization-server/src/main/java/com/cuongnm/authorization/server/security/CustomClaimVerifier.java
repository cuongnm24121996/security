package com.cuongnm.authorization.server.security;

import com.cuongnm.authorization.server.constant.Constants;
import com.cuongnm.authorization.server.security.error.InvalidTenantException;
import com.cuongnm.authorization.server.tenant.TenantContextHolder;
import org.springframework.security.oauth2.common.exceptions.InvalidTokenException;
import org.springframework.security.oauth2.provider.token.store.JwtClaimsSetVerifier;


import java.util.Map;

public class CustomClaimVerifier implements JwtClaimsSetVerifier {
    @Override
    public void verify(Map<String, Object> claims) throws InvalidTokenException {
        String tenantId = (String) claims.get(Constants.TENANT_FORMAT);
        if (tenantId == null || tenantId.length() == 0) {
            throw new InvalidTenantException("tenant_id claim is empty");
        }

        if (tenantId.equals(TenantContextHolder.getTenant())) {
            throw new InvalidTenantException("tenant_id not matching");
        }
    }
}
