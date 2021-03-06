/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.oak_yoga_studio.service;

import com.oak_yoga_studio.domain.Product;
import java.util.List;

/**
 *
 * @author Somayeh
 */
public interface IProductService {
    
     public List<Product> searchProductByName(String pname);
    
     public Product getProductDetailInfo(int id);
    
     public void addProduct(Product product);
     
     public void updateProduct(Product product);
     
     public Product getProduct(int id);
     
     public List<Product> getAllProducts();
     
     public List<Product> getProductByName(String name);

}
