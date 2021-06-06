package com.cuongnm.authorization.server.filter;

import com.cuongnm.authorization.server.constant.Constants;
import com.cuongnm.authorization.server.tenant.TenantContextHolder;
import com.cuongnm.authorization.server.util.JwtTokenUtils;
import com.cuongnm.authorization.server.util.SecurityUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.oauth2.common.util.JsonParser;
import org.springframework.security.oauth2.common.util.JsonParserFactory;
import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@Component
public class JwtAuthenticationFilter implements Filter {

    private final Logger log = LoggerFactory.getLogger(JwtAuthenticationFilter.class);
    private final JwtTokenUtils jwtTokenUtil;
    private JsonParser objectMapper;

    public JwtAuthenticationFilter(JwtTokenUtils jwtTokenUtil) {
        this.jwtTokenUtil = jwtTokenUtil;
        objectMapper = JsonParserFactory.create();
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        String tenantId = httpServletRequest.getHeader(Constants.TENANT_FORMAT);
        if (StringUtils.isBlank(tenantId)) {
            throw new AccessDeniedException("Tenant invalid");
        }

        String token = SecurityUtils.getTokenValue().orElse(null);
        if (StringUtils.isNotBlank(token)) {
            String tenantIdFromToken = jwtTokenUtil.getTenantIdFromToken();
            if (!tenantId.equals(tenantIdFromToken)) {
                throw new AccessDeniedException("Tenant invalid");
            }
        }
        TenantContextHolder.setTenantId(tenantId);
        log.info("Request has tenant_id: " + tenantId);
        filterChain.doFilter(servletRequest, servletResponse);
    }
}
