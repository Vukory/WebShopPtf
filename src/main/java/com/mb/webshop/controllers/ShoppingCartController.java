package com.mb.webshop.controllers;

import com.mb.webshop.repos.ProductRepository;
import com.mb.webshop.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ShoppingCartController {

    private final CartService shoppingCartService;


    private final ProductRepository productRepository;

    @Autowired
    public ShoppingCartController(CartService shoppingCartService, ProductRepository productRepository) {
        this.shoppingCartService = shoppingCartService;
        this.productRepository = productRepository;
    }

    @GetMapping("/cart")
    public ModelAndView shoppingCart() {
        ModelAndView modelAndView = new ModelAndView("/cart");
        modelAndView.addObject("products", shoppingCartService.getProductsInCart());
        modelAndView.addObject("total", shoppingCartService.getTotal());
        return modelAndView;
    }

    @GetMapping("/cart/addProduct/{id}")
    public ModelAndView addProductToCart(@PathVariable("id") String productId) {
        productRepository.findById(productId).ifPresent(shoppingCartService::addProduct);
        return shoppingCart();
    }

    @GetMapping("/cart/removeProduct/{id}")
    public ModelAndView removeProductFromCart(@PathVariable("id") String productId) {
        productRepository.findById(productId).ifPresent(shoppingCartService::removeProduct);
        return shoppingCart();
    }

    @GetMapping("/cart/checkout")
    public ModelAndView checkout() {
        try {
            shoppingCartService.checkout();
        } catch (RuntimeException e) {
            return shoppingCart().addObject("outOfStockMessage", e.getMessage());
        }
        return shoppingCart();
    }

    @GetMapping("/cart/clearCart")
    public ModelAndView clearCart(){
        shoppingCartService.clearCart();
        return shoppingCart();
    }

}
