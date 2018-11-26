package com.website.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Shop.DAO.ProductDAO;

@Controller
public class FilterController {
	
	@Autowired
	ProductDAO productDAO;
	
	
	@RequestMapping("viewProduct/{productid}")
	public String ViewSingleProduct(@PathVariable("productid") int productid, Model model) {

		model.addAttribute("product", productDAO.getSingleProduct(productid));

		return "SingleProduct";
	}
	
	@RequestMapping("viewCategory/{categoryId}")
	public String ViewProductByCategory(@PathVariable("categoryId") int categoryId, Model model) {

		model.addAttribute("prodlist", productDAO.getProductByCategory(categoryId));

		return "ViewProduct";
	}
	
	@RequestMapping("filter")
	public String ViewProductByPrice(@RequestParam("min") double min,@RequestParam("max")double max, Model model) {
	model.addAttribute("prodlist", productDAO.getProductByMinMaxPrice(min,max));
	model.addAttribute("filter", "Filter: Min" +min+ "Max" +max);
	return "ViewProduct";
	}

}
