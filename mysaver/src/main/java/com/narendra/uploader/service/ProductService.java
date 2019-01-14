package com.narendra.uploader.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;

import com.narendra.uploader.beans.ProductModel;
import com.narendra.uploader.dao.ProductDataDAO;

@Configuration
public class ProductService
{
  @Autowired
  private ProductDataDAO productDataDAO;
  
 

  public void uploadProduct(ProductModel productModel) throws java.io.IOException {
	  productDataDAO.insertPriceData(productModel);
  }
  
  public List<ProductModel> getAllProducts(){
	  
	return productDataDAO.getAllProducts();
	  
  }
}