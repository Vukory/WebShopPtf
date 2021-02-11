package com.mb.webshop.service;

import com.mb.webshop.entities.Product;
import com.mb.webshop.repos.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.web.context.WebApplicationContext;

import java.math.BigDecimal;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@Service
@Scope(value = WebApplicationContext.SCOPE_SESSION, proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CartService {

    private final ProductRepository productRepository;

    private Map<Product, Integer> products = new HashMap<>();

    @Autowired
    public CartService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public void addProduct(Product product) {
        if (products.containsKey(product)) {
            products.replace(product, products.get(product) + 1);
        } else {
            products.put(product, 1);
        }
    }

    public void removeProduct(Product product) {
        if (products.containsKey(product)) {
            if (products.get(product) > 1)
                products.replace(product, products.get(product) - 1);
            else if (products.get(product) == 1) {
                products.remove(product);
            }
        }
    }

    public Map<Product, Integer> getProductsInCart() {
        return Collections.unmodifiableMap(products);
    }

    public void checkout() {
        Product product;
        for (Map.Entry<Product, Integer> entry : products.entrySet()) {
            // Refresh quantity for every product before checking
            product = productRepository.findById(entry.getKey().getId()).get();
            if (product.getUnitsInStock() < entry.getValue())
                throw new RuntimeException(product.toString());
            entry.getKey().setUnitsInStock(product.getUnitsInStock() - entry.getValue());
        }

        productRepository.saveAll(products.keySet());
        productRepository.flush();
        products.clear();
    }

    public double getTotal() {
        return products.entrySet().stream()
                .map(entry -> entry.getKey().getUnitPrice() * (Double.valueOf(entry.getValue())))
                .reduce(Double::sum)
                .orElse(0.0);
    }

    public void clearCart(){
        products.clear();
    }
}
