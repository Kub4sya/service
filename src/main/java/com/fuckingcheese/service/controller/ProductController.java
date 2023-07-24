package com.fuckingcheese.service.controller;

import com.fuckingcheese.service.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;

    @GetMapping("/")
    public String prodocts(Model model)
    {
        model.addAttribute("products",productService.listProducts());
        return "products";
    }
}
