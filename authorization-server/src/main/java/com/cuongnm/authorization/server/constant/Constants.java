package com.cuongnm.authorization.server.constant;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class Constants {
    public static String TENANT_FORMAT = "X-Tenant_ID";
    public static String EMAIL = "email";
    public static String PHONE = "phone";
    public static String FULL_NAME = "full_name";
    public static String POSTAL_COED = "postal_code";

    public static final String ADMIN = "ROLE_ADMIN";

    public static final String USER = "ROLE_USER";

    public static final String ANONYMOUS = "ROLE_ANONYMOUS";

    public static final List<String> REQUEST_URI_IGNORE = Arrays.asList("/oauth/authorize");
}
