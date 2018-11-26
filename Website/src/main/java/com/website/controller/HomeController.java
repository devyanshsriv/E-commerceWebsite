package com.website.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.Shop.DAO.CartDAO;
import com.Shop.DAO.OrderDAO;
import com.Shop.DAO.ProductDAO;
import com.Shop.DAO.ShopDAO;
import com.Shop.Model.Cart;
import com.Shop.Model.CartLine;
import com.Shop.Model.Shop;

@Controller
public class HomeController {

	@Autowired
	ShopDAO shopDAO;

	@Autowired
	CartDAO cartDAO;

	@Autowired
	Cart cart;

	@Autowired
	ProductDAO productDAO;

	@Autowired
	CartLine cartLine;
	
	@Autowired
	OrderDAO orderDAO;

	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
	@RequestMapping("/New")
	public String newfile() {
		return "NewFile";
	}

	@RequestMapping("/Register")
	public String Register(Model model) {

		model.addAttribute("shop", new Shop());
		return "Register";
	}

	public String Resister() {
		return "Register";
	}

	@RequestMapping(value = "/regUser", method = RequestMethod.POST)
	public String regUser(@ModelAttribute("shop") Shop shop, Model model) {

		System.out.println("Cart id------>" + cart.getCartid());

		shop.setRole("ROLE_USER");
		shop.setEnable(true);
		shopDAO.addShop(shop);

		cart.setEmail(shop.getEmail());
		cartDAO.addCart(cart);
		return "index";
	}

	@RequestMapping("/Showall")
	public String showall(Model model) {
		List<Shop> lst = shopDAO.getAllShop();
		model.addAttribute("listShop", lst);
		if (lst == null) {
			System.out.println("Null");
		}
		return "ShowAll";
	}

	@RequestMapping("/editshop/{userid}")
	public String goToEdit(@PathVariable("userid") int userid, Model model) {
		Shop obj = shopDAO.getSingleShop(userid);
		model.addAttribute("shop", obj);
		return "editshop";
	}

	@RequestMapping("/ProjectRegister")
	public String prodreg() {
		return "ProjectRegister";
	}

	@RequestMapping("/ViewProduct")
	public String ViewProducts(Model model) {

		model.addAttribute("prodlist", productDAO.getAllProduct());

		return "ViewProduct";
	}

	@RequestMapping(value = "/;updateShop", method = RequestMethod.POST)
	public String updateS(@ModelAttribute("shop") Shop shop, Model model) {
		shopDAO.updateShop(shop);
		return "redirect:/Showall";
	}

	@RequestMapping(value = "/deleteShop/{userid}")
	public String goToDel(@PathVariable("userid") int userid, Model model) {
		shopDAO.deleteShop(userid);
		return "redirect:/Showall";
	}

	@RequestMapping("/About")
	public String about() {
		return "About";
	}

	@RequestMapping("/Deals")
	public String deals() {
		return "Deals";
	}

	@RequestMapping("/Contactus")
	public String contact() {
		return "Contactus";
	}

	@RequestMapping("/index")
	public String index() {
		return "index";
	}

	@RequestMapping("/search")
	public String Srearch(@RequestParam("keyword") 
	String keyword,Model model) {
		/*List<Product> list=*/
		model.addAttribute("prodlist", productDAO.getAllProductByKeyWords(keyword));

		return "ViewProduct";
	}
}