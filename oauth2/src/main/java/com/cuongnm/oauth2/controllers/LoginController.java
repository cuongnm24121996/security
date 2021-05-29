package com.cuongnm.oauth2.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
    @GetMapping("index")
    public String showSignUpForm() {
        return "index";
    }
}
