package com.website.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.Shop.DAO.CategoryDAO;
import com.Shop.Model.Category;

@ControllerAdvice
public class GlobalController {
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@ModelAttribute("catList")
	public List<Category> getCategoryList(){
		return categoryDAO.getAllCategory();
		
	}

}
