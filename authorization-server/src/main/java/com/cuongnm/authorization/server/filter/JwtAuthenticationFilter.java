package com.cuongnm.authorization.server.filter;

import com.cuongnm.authorization.server.constant.Logging;
import com.cuongnm.authorization.server.tenant.TenantContextHolder;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@Component
public class JwtAuthenticationFilter implements Filter {

    private final Logger log = LoggerFactory.getLogger(JwtAuthenticationFilter.class);

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        String tenantId = subStringBetween("//", ".", httpServletRequest.getRequestURL().toString());
        TenantContextHolder.setTenantId(tenantId);
        log.info(String.format(Logging.LOGGING_FILTER_TENANT_FORMAT, tenantId));
        filterChain.doFilter(servletRequest, servletResponse);
    }

    private String subStringBetween(String start, String end, String str) {
        if (StringUtils.isNotBlank(str)) {
            int startIndex = str.indexOf(start);
            int nextIndex = str.indexOf(end, startIndex);
            return str.substring(startIndex + 2, nextIndex);
        }
        return null;
    }
}
