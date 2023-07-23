package com.fuckingcheese.service.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {
    @GetMapping("/")
    public String prodocts()
    {
        return "products";
    }
}
