package com.cuongnm.oauth.configure;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component
@ConfigurationProperties(
        prefix = "uaa",
        ignoreUnknownFields = false
)
public class UaaProperties {
    private Security security;

    public Security getSecurity() {
        return security;
    }

    public void setSecurity(Security security) {
        this.security = security;
    }

    public class Security {
        private Jwt jwt;

        public Jwt getJwt() {
            return jwt;
        }

        public void setJwt(Jwt jwt) {
            this.jwt = jwt;
        }

        public class Jwt {
            private String secret;
            private String base64Secret;
            private long tokenValidityInSeconds;
            private long tokenValidityInSecondsForRememberMe;

            public String getSecret() {
                return secret;
            }

            public void setSecret(String secret) {
                this.secret = secret;
            }

            public String getBase64Secret() {
                return base64Secret;
            }

            public void setBase64Secret(String base64Secret) {
                this.base64Secret = base64Secret;
            }

            public long getTokenValidityInSeconds() {
                return tokenValidityInSeconds;
            }

            public void setTokenValidityInSeconds(long tokenValidityInSeconds) {
                this.tokenValidityInSeconds = tokenValidityInSeconds;
            }

            public long getTokenValidityInSecondsForRememberMe() {
                return tokenValidityInSecondsForRememberMe;
            }

            public void setTokenValidityInSecondsForRememberMe(long tokenValidityInSecondsForRememberMe) {
                this.tokenValidityInSecondsForRememberMe = tokenValidityInSecondsForRememberMe;
            }
        }
    }
}


