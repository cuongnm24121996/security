package com.cuongnm.authorization.server.tenant;

public class TenantContextHolder {
    private static final ThreadLocal<String> CONTEXT = new ThreadLocal<>();
    private TenantContextHolder() {
        // do nothing
    }

    public static void setTenantId(String tenant) {
        CONTEXT.set(tenant);
    }

    public static String getTenant() {
        return CONTEXT.get();
    }

    public static void clear() {
        CONTEXT.remove();
    }
}
