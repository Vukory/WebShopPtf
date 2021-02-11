package com.mb.webshop.controllers;

import com.mb.webshop.entities.Product;
import com.mb.webshop.repos.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class HomeController {

    @Autowired
    private ProductRepository productRepository;

    @GetMapping("/welcome")
    public String welcome() {
        return "welcome";
    }

    @GetMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("/products")
    public String products(Model model) {
        Iterable<Product> products=productRepository.findAll();
        model.addAttribute("products", products);
        return "products";
    }


}
