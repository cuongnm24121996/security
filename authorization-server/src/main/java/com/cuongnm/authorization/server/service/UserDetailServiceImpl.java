package com.cuongnm.authorization.server.service;

import com.cuongnm.authorization.server.model.AuthUserDetail;
import com.cuongnm.authorization.server.model.User;
import com.cuongnm.authorization.server.repository.UserDetailRepository;
import org.springframework.security.authentication.AccountStatusUserDetailsChecker;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserDetailServiceImpl implements UserDetailsService {
    private final UserDetailRepository userDetailRepository;

    public UserDetailServiceImpl(UserDetailRepository userDetailRepository) {
        this.userDetailRepository = userDetailRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<User> userOptional = userDetailRepository.findByUsername(username);
        userOptional.orElseThrow(() -> new UsernameNotFoundException("Username or password wrong"));
        UserDetails userDetails = new AuthUserDetail(userOptional.get());
        new AccountStatusUserDetailsChecker().check(userDetails);
        return userDetails;
    }
}
