package com.cuongnm.authorization.server.model;

import org.springframework.core.io.Resource;

public class JwtProperties {
    private Resource keyStore;
    private String keyStorePassword;
    private String keyPairAlias;
    private String keyPairPassword;
    private String base64Secret;

    public Resource getKeyStore() {
        return keyStore;
    }

    public void setKeyStore(Resource keyStore) {
        this.keyStore = keyStore;
    }

    public String getKeyStorePassword() {
        return keyStorePassword;
    }

    public void setKeyStorePassword(String keyStorePassword) {
        this.keyStorePassword = keyStorePassword;
    }

    public String getKeyPairAlias() {
        return keyPairAlias;
    }

    public void setKeyPairAlias(String keyPairAlias) {
        this.keyPairAlias = keyPairAlias;
    }

    public String getKeyPairPassword() {
        return keyPairPassword;
    }

    public void setKeyPairPassword(String keyPairPassword) {
        this.keyPairPassword = keyPairPassword;
    }

    public String getBase64Secret() {
        return base64Secret;
    }

    public void setBase64Secret(String base64Secret) {
        this.base64Secret = base64Secret;
    }
}
