package com.narendra.uploader.controller;
/**
 * @author narendra
 */
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.narendra.uploader.beans.ProductModel;
import com.narendra.uploader.service.ProductService;

@Controller
public class DataUploadController {
	@Autowired
	private ProductService productService;

	public DataUploadController() {
	}

	@RequestMapping(value = { "/" }, method = { RequestMethod.GET })
	public String displayForm() {
		return "uploadData";
	}

	@RequestMapping(value = { "/savefinal" }, method = { RequestMethod.POST })
	public String fileLoaderOfFolder(@ModelAttribute ProductModel productModel) {
		
		try {
			productService.uploadProduct(productModel);
		} catch (Exception localException) {
		}

		return "uploadData";
	}
	
	@RequestMapping(value = { "/allprod" }, method = { RequestMethod.GET })
	public ModelAndView getAllProducts(){
		
		List<ProductModel> allProducts = productService.getAllProducts();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("allProductPage");
		modelAndView.addObject("list", allProducts);
		
		
		return modelAndView;
		
	}
}