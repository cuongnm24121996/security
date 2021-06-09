package com.cuongnm.authorization.server.config;

import com.cuongnm.authorization.server.model.JwtProperties;
import com.cuongnm.authorization.server.security.CustomClaimVerifier;
import com.cuongnm.authorization.server.security.TenantAwareJwtAccessTokenConverter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.token.TokenEnhancer;
import org.springframework.security.oauth2.provider.token.TokenEnhancerChain;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.DelegatingJwtClaimsSetVerifier;
import org.springframework.security.oauth2.provider.token.store.JdbcTokenStore;
import org.springframework.security.oauth2.provider.token.store.JwtAccessTokenConverter;
import org.springframework.security.oauth2.provider.token.store.JwtClaimsSetVerifier;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.*;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.util.Arrays;

@Configuration
public class AuthorizationConfig implements AuthorizationServerConfigurer {
    private final Logger log = LoggerFactory.getLogger(AuthorizationConfig.class);

    private final PasswordEncoder passwordEncoder;
    private final DataSource dataSource;
    private final AuthenticationManager authenticationManager;
    private final UserDetailsService userDetailsService;
    private final SecurityProperties securityProperties;
    private KeyPair keyPair;

    public AuthorizationConfig(PasswordEncoder passwordEncoder, DataSource dataSource,
                               AuthenticationManager authenticationManager, UserDetailsService userDetailsService,
                               SecurityProperties securityProperties) {
        this.passwordEncoder = passwordEncoder;
        this.dataSource = dataSource;
        this.authenticationManager = authenticationManager;
        this.userDetailsService = userDetailsService;
        this.securityProperties = securityProperties;
    }

    @PostConstruct
    public void init() throws IOException, KeyStoreException, CertificateException, NoSuchAlgorithmException, UnrecoverableKeyException {
        JwtProperties jwtProperties = securityProperties.getJwt();
        FileInputStream is = new FileInputStream(jwtProperties.getPathLocation());
        KeyStore keystore = KeyStore.getInstance(KeyStore.getDefaultType());
        keystore.load(is, jwtProperties.getKeyStorePassword().toCharArray());
        Key key = keystore.getKey(jwtProperties.getKeyPairAlias(), jwtProperties.getKeyPairPassword().toCharArray());
        if (key instanceof PrivateKey) {
            Certificate cert = keystore.getCertificate(jwtProperties.getKeyPairAlias());
            PublicKey publicKey = cert.getPublicKey();
            keyPair = new KeyPair(publicKey, (PrivateKey) key);
        }
    }

    @Override
    public void configure(AuthorizationServerSecurityConfigurer security) throws Exception {
        security.checkTokenAccess("isAuthenticated()").tokenKeyAccess("permitAll()");
    }

    @Override
    public void configure(ClientDetailsServiceConfigurer client) throws Exception {
        client.jdbc(dataSource).passwordEncoder(passwordEncoder);
        log.info("Config client successful");
    }

    @Override
    public void configure(AuthorizationServerEndpointsConfigurer endpoint) throws Exception {
        TokenEnhancerChain tokenEnhancerChain = new TokenEnhancerChain();
        tokenEnhancerChain.setTokenEnhancers(Arrays.asList(tokenEnhancer(), jwtAccessTokenConverter()));

        endpoint.tokenStore(jdbcTokenStore());
        endpoint.tokenEnhancer(tokenEnhancerChain);
        endpoint.userDetailsService(userDetailsService);
        endpoint.authenticationManager(authenticationManager);
        log.info("Config endpoint successful");
    }

    @Bean
    TokenStore jdbcTokenStore() {
        log.info("Config data source into jdbc token store");
        return new JdbcTokenStore(dataSource);
    }

    @Bean
    public JwtAccessTokenConverter jwtAccessTokenConverter() throws UnrecoverableKeyException, CertificateException, IOException, KeyStoreException, NoSuchAlgorithmException {
        log.info("Config jwt access converter");
        final JwtAccessTokenConverter jwtAccessTokenConverter = new JwtAccessTokenConverter();
        JwtProperties jwtProperties = securityProperties.getJwt();
//        KeyPair keyPair = loadKeyPair();
        jwtAccessTokenConverter.setJwtClaimsSetVerifier(jwtClaimsSetVerifier());
        jwtAccessTokenConverter.setKeyPair(keyPair);
        jwtAccessTokenConverter.setSigningKey(jwtProperties.getBase64Secret());
        log.info("Load key store successful");
        return jwtAccessTokenConverter;
    }

//    private KeyPair keyPair(JwtProperties jwtProperties, KeyStoreKeyFactory keyStoreKeyFactory) {
//        return keyStoreKeyFactory.getKeyPair(jwtProperties.getKeyPairjwtProperties.getKeyPairAlias()(), jwtProperties
//        .getKeyPairPassword()
//        .toCharArray());
//    }
//
//    private KeyStoreKeyFactory keyStoreKeyFactory(JwtProperties jwtProperties) {
//        return new KeyStoreKeyFactory(jwtProperties.getKeyStore(), jwtProperties.getKeyStorePassword().toCharArray());
//    }

    @Bean
    public TokenEnhancer tokenEnhancer() {
        return new TenantAwareJwtAccessTokenConverter();
    }

    @Bean
    JwtClaimsSetVerifier customJwtClaimVerifier() {
        return new CustomClaimVerifier();
    }

    @Bean
    public JwtClaimsSetVerifier jwtClaimsSetVerifier() {
        return new DelegatingJwtClaimsSetVerifier(Arrays.asList(customJwtClaimVerifier()));
    }

//    KeyPair loadKeyPair() throws IOException, KeyStoreException, CertificateException, NoSuchAlgorithmException,
//            UnrecoverableKeyException {
//        JwtProperties jwtProperties = securityProperties.getJwt();
//        FileInputStream is = new FileInputStream(jwtProperties.getPathLocation());
//        KeyStore keystore = KeyStore.getInstance(KeyStore.getDefaultType());
//        keystore.load(is, jwtProperties.getKeyStorePassword().toCharArray());
//        Key key = keystore.getKey(jwtProperties.getKeyPairAlias(), jwtProperties.getKeyPairPassword().toCharArray());
//        if (key instanceof PrivateKey) {
//            Certificate cert = keystore.getCertificate(jwtProperties.getKeyPairAlias());
//            PublicKey publicKey = cert.getPublicKey();
//            return new KeyPair(publicKey, (PrivateKey) key);
//        }
//        return null;
//    }
}
