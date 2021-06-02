package com.cuongnm.oauth2.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OAuth2Controller {
    @GetMapping("/login")
    public String login() {
        return "login";
    }
}
