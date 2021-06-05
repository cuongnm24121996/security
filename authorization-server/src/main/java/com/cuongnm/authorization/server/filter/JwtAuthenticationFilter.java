package com.cuongnm.authorization.server.filter;

import com.cuongnm.authorization.server.constant.Constants;
import com.cuongnm.authorization.server.tenant.TenantContextHolder;
import com.cuongnm.authorization.server.util.JwtTokenUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@Component
public class JwtAuthenticationFilter implements Filter {

    private final Logger log = LoggerFactory.getLogger(JwtAuthenticationFilter.class);
    private final JwtTokenUtils jwtTokenUtil;

    public JwtAuthenticationFilter(JwtTokenUtils jwtTokenUtil) {
        this.jwtTokenUtil = jwtTokenUtil;
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        String tenantId = jwtTokenUtil.getTenantIdFromToken();
        if (tenantId == null || tenantId.length() <= 0) {
            tenantId = httpServletRequest.getHeader(Constants.TENANT_FORMAT);
        }

        TenantContextHolder.setTenantId(tenantId);
        log.info("Request has tenant_id: " + tenantId);
        filterChain.doFilter(servletRequest, servletResponse);
    }
}
