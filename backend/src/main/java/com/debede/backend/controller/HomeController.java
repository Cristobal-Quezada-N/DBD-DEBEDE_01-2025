package com.debede.backend.controller;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
@RequestMapping("/api")
public class HomeController {
    @GetMapping("/test")
    public String home() {
        return "Test from Spring Boot";
    }
}