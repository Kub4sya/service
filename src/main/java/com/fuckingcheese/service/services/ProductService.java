package com.fuckingcheese.service.services;

import com.fuckingcheese.service.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long ID = 0;

    {
        products.add(new Product(++ID,"PlayStation 5","Loh","new",1000,"lohostan","clown"));
        products.add(new Product(++ID,"PlayStation 3","Loh","bad",2900,"lohostan","clown"));
        products.add(new Product(++ID,"PlayStation 4","Loh","new",5000,"lohostan","clown"));
    }

    public List<Product> listProducts()
    {
        return products;
    }

    public void saveProduct(Product product)
    {
        product.setId(++ID);
        products.add(product);
    }

    public void deleteProduct(Long id)
    {
        products.removeIf(product -> product.getId().equals(id));
    }

    public Product getProductById(Long id) {
        for (Product product : products)
        {
            if (product.getId().equals(id))
                return product;
        }
        return null;
    }
}
