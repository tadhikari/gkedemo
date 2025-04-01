package com.testing.demo.api;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

    @GetMapping("/")
    public String hello() {
        return "Hello World from RiftCo TradeSense!";
    }
    
    @GetMapping("/health")
    public String health() {
        return "UP";
    }
}