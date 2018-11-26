package com.website.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.Shop.DAO.CategoryDAO;
import com.Shop.DAO.ProductDAO;
import com.Shop.DAO.SupplierDAO;
import com.Shop.Model.Category;
import com.Shop.Model.Product;
import com.Shop.Model.Supplier;
import com.Shop.Util.FileUploadUtility;

@Controller
@RequestMapping("/manageProduct")

public class ManageController {

	@Autowired
	ProductDAO productDAO;
	@Autowired
	SupplierDAO supplierDAO;
	@Autowired
	CategoryDAO categoryDAO;

	@RequestMapping("/")
	public String home1() {
		return "index";
	}

	// PRODUCT

	@RequestMapping("/ProductRegister")
	public String callProductPage(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("catlist", categoryDAO.getAllCategory());
		model.addAttribute("prodlist", productDAO.getAllProduct());
		return "ProductRegister";

	}

	@RequestMapping(value = "/regProd", method = RequestMethod.POST)
	public String regProd(@ModelAttribute("product") Product product, Model model,
			@RequestParam(name="file1",required=false) MultipartFile file1, HttpServletRequest request,
			@RequestParam(name="file2",required=false) MultipartFile file2, 
			@RequestParam(name="file3",required=false) MultipartFile file3,
			@RequestParam(name="file4",required=false) MultipartFile file4) {
		
		MultipartFile files[]= {file1, file2, file3, file4};

		if (files[0].isEmpty()) {
			FileUploadUtility.uploadNoImage(request, product.getCode());
		} else {
			FileUploadUtility.uploadFile(request, files, product.getCode());
		}
		productDAO.addProduct(product);
		return "redirect:/manageProduct/ProductRegister";

	}

	@RequestMapping("/updateProduct/{productid}")
	public String goToEdit(@PathVariable("productid") int productid, Model model) {

		Product obj = productDAO.getSingleProduct(productid);
		model.addAttribute("product", obj);
		model.addAttribute("catlist", categoryDAO.getAllCategory());
		return "UpdateProduct";
	}

	@RequestMapping(value = "/updateProd", method = RequestMethod.POST)
	public String updateS(@ModelAttribute("product") Product product, Model model,
			@RequestParam("file1") MultipartFile file1, HttpServletRequest request,
			@RequestParam(name="file2",required=false) MultipartFile file2, 
			@RequestParam(name="file3",required=false) MultipartFile file3,
			@RequestParam(name="file4",required=false) MultipartFile file4) {
		
		MultipartFile files[]= {file1, file2, file3, file4};

		if (files[0].isEmpty()) {
			FileUploadUtility.uploadNoImage(request, product.getCode());
		} else {
			product.setCode(new Product().getCode());
			productDAO.updateProduct(product);
			FileUploadUtility.uploadFile(request, files, product.getCode());
		}
		
		return "redirect:/manageProduct/ProductRegister";
	}

	@RequestMapping(value = "/deleteProd/{productid}")
	public String goToDel(@PathVariable("productid") int productid, Model model) {
		productDAO.deleteProduct(productid);
		return "redirect:/manageProduct/ProductRegister";
	}

	// SUPPLIER

	@RequestMapping("/SupplierRegister")
	public String reg2(Model model) {
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("suplist", supplierDAO.getAllSupplier());
		return "SupplierRegister";

	}

	@RequestMapping(value = "/regSupp", method = RequestMethod.POST)
	public String regS(@ModelAttribute("supplier") Supplier supplier, HttpServletRequest request) {
		supplierDAO.addSupplier(supplier);
		return "redirect:/manageProduct/SupplierRegister";
	}

	@RequestMapping("/supEdit/{supplierid}")
	public String goToEdit2(@PathVariable("supplierid") int supplierid, Model model) {
		Supplier obj = supplierDAO.getSingleSupplier(supplierid);
		model.addAttribute("supplier", obj);
		return "UpdateSupplier";
	}

	@RequestMapping(value = "/updateSupplier", method = RequestMethod.POST)
	public String updateSup(@ModelAttribute("supplier") Supplier supplier, Model model, HttpServletRequest request) {
		supplierDAO.updateSupplier(supplier);
		return "redirect:/manageProduct/SupplierRegister";
	}

	@RequestMapping(value = "/deleteSupplier/{supplierid}")
	public String goToDel2(@PathVariable("supplierid") int supplierid, Model model) {
		supplierDAO.deleteSupplier(supplierid);
		return "redirect:/manageProduct/SupplierRegister";
	}

	// CATEGORY

	@RequestMapping("/CategoryRegister")
	public String reg3(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("catlist", categoryDAO.getAllCategory());
		return "CategoryRegister";

	}

	@RequestMapping(value = "/catReg", method = RequestMethod.POST)
	public String regC(@ModelAttribute("category") Category category, Model model, HttpServletRequest request) {
		categoryDAO.addCategory(category);
		return "redirect:/manageProduct/CategoryRegister";
	}

	@RequestMapping("/catEdit/{categoryId}")
	public String goToEdit1(@PathVariable("categoryId") int categoryId, Model model) {
		Category obj = categoryDAO.getSingleCategory(categoryId);
		model.addAttribute("category", obj);
		return "UpdateCategory";
	}

	@RequestMapping(value = "/UpdateCategory", method = RequestMethod.POST)
	public String updateC(@ModelAttribute("category") Category category, Model model, HttpServletRequest request) {
		categoryDAO.updateCategory(category);
		return "redirect:/manageProduct/CategoryRegister";
	}

	@RequestMapping(value = "/deleteCat/{categoryId}")
	public String goToDel1(@PathVariable("categoryId") int categoryId, Model model) {
		categoryDAO.deleteCategory(categoryId);
		return "redirect:/manageProduct/CategoryRegister";
	}
}