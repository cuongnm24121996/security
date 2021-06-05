package com.cuongnm.authorization.server.config;

import com.cuongnm.authorization.server.model.JwtProperties;
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
import org.springframework.security.oauth2.provider.token.store.JdbcTokenStore;
import org.springframework.security.oauth2.provider.token.store.JwtAccessTokenConverter;
import org.springframework.security.oauth2.provider.token.store.KeyStoreKeyFactory;

import javax.sql.DataSource;
import java.security.KeyPair;
import java.util.Arrays;

@Configuration
public class AuthorizationConfig implements AuthorizationServerConfigurer {
    private final Logger log = LoggerFactory.getLogger(AuthorizationConfig.class);

    private final PasswordEncoder passwordEncoder;
    private final DataSource dataSource;
    private final AuthenticationManager authenticationManager;
    private final UserDetailsService userDetailsService;
    private final SecurityProperties securityProperties;

    private JwtAccessTokenConverter jwtAccessTokenConverter;

    public AuthorizationConfig(PasswordEncoder passwordEncoder, DataSource dataSource,
                               AuthenticationManager authenticationManager, UserDetailsService userDetailsService,
                               SecurityProperties securityProperties) {
        this.passwordEncoder = passwordEncoder;
        this.dataSource = dataSource;
        this.authenticationManager = authenticationManager;
        this.userDetailsService = userDetailsService;
        this.securityProperties = securityProperties;
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
    public JwtAccessTokenConverter jwtAccessTokenConverter() {
        log.info("Config jwt access converter");
        if (jwtAccessTokenConverter != null) {
            return jwtAccessTokenConverter;
        }

        JwtProperties jwtProperties = securityProperties.getJwt();
        KeyPair keyPair = keyPair(jwtProperties, keyStoreKeyFactory(jwtProperties));
        log.info("Load key store successful");
        jwtAccessTokenConverter = new JwtAccessTokenConverter();
        jwtAccessTokenConverter.setKeyPair(keyPair);
        log.info("Load key store successful");
        return jwtAccessTokenConverter;
    }

    private KeyPair keyPair(JwtProperties jwtProperties, KeyStoreKeyFactory keyStoreKeyFactory) {
        return keyStoreKeyFactory.getKeyPair(jwtProperties.getKeyPairAlias(), jwtProperties.getKeyPairPassword().toCharArray());
    }

    private KeyStoreKeyFactory keyStoreKeyFactory(JwtProperties jwtProperties) {
        return new KeyStoreKeyFactory(jwtProperties.getKeyStore(), jwtProperties.getKeyStorePassword().toCharArray());
    }

    @Bean
    public TokenEnhancer tokenEnhancer() {
        return new TenantAwareJwtAccessTokenConverter();
    }
}
