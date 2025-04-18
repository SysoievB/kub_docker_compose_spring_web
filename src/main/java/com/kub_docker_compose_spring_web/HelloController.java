package com.kub_docker_compose_spring_web;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping
public class HelloController {

    @GetMapping
    public String hello() {
        return "Hello World!!!!";
    }

    @PostMapping
    public String helloPost(@RequestParam String message) {
        return "Your message is: " + message;
    }
}
