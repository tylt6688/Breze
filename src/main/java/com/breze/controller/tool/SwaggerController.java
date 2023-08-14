package com.breze.controller.tool;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/tool")
public class SwaggerController {
    @GetMapping("/swagger")
    public String index() {
        return "redirect:/swagger-ui.html";
    }
}
