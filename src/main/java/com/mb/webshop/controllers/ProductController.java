package com.mb.webshop.controllers;

import com.mb.webshop.entities.Product;
import com.mb.webshop.repos.ProductRepository;
import com.mb.webshop.requests.ProductRequest;
import com.mb.webshop.utils.ImageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.IOException;
import java.util.HashMap;

@Controller
public class ProductController {

    @Autowired
    private HttpSession httpSession;

    @Autowired
    private ProductRepository productRepository;

    @RequestMapping(value = "/addProduct", method = RequestMethod.POST)
    public String submit(@Valid @ModelAttribute("product") ProductRequest product, BindingResult result, ModelMap model) throws IOException {

        String image= ImageUtils.toBase64(product.getImage());
        Product p = new Product(product.getId(), product.getName(), product.getUnitPrice(), product.getDescription(), product.getManufacturer(), product.getUnitsInStock(), image);
        if (result.hasErrors()) {
            return "addProduct";
        }

        productRepository.save(p);

        Iterable<Product> products = productRepository.findAll();
        model.addAttribute("products", products);
        return "products";
    }

    @GetMapping("/addProduct")
    public ModelAndView addProduct() {
        return new ModelAndView("addProduct", "product", new Product());
    }

    @RequestMapping(value = "/editProduct", method = RequestMethod.POST)
    public String submitEdited(@Valid @ModelAttribute("product") ProductRequest product, BindingResult result, ModelMap model) throws IOException {
        if (result.hasErrors()) {
            return "editProduct";
        }

        String image= ImageUtils.toBase64(product.getImage());
        Product p = new Product(product.getId(), product.getName(), product.getUnitPrice(), product.getDescription(), product.getManufacturer(), product.getUnitsInStock(), image);

        productRepository.save(p);

        Iterable<Product> products = productRepository.findAll();
        model.addAttribute("products", products);
        System.out.println(String.valueOf(httpSession == null));
        return "products";
    }

    @GetMapping("/editProduct/{id}")
    public ModelAndView editProduct(@PathVariable("id") String id) {
        return new ModelAndView("editProduct", "product", productRepository.findById(id));
    }

    @GetMapping("/viewProduct/{id}")
    public String viewProduct(@PathVariable("id") String id, Model model) {
        Product p = productRepository.findById(id).get();
        model.addAttribute("product", p);
        return "viewProduct";
    }




}
