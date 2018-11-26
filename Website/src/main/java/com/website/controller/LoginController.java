package com.website.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Shop.DAO.CartDAO;
import com.Shop.DAO.ShopDAO;
import com.Shop.Model.Cart;
import com.Shop.Model.Shop;

@Controller
public class LoginController {

	@Autowired
	ShopDAO shopDAO;

	@Autowired
	CartDAO cartDAO;

	@Autowired
	Cart cart;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username or password");

		}
		if (logout != null) {
			model.addObject("msg", "You've been successfully logged out");
		}
		model.setViewName("Login");
		return model;
	}

	@RequestMapping(value = "/login_success")
	public String loginSuccess(HttpSession session, Model m) {
		System.out.println("=========== Successful Login ===========");

		boolean loggedIn = true;
		// Retrieving the username
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		Shop shop = shopDAO.getUserByEmail(username);
		session.setAttribute("username", username);
		session.setAttribute("loggedIn", loggedIn);
		if (!shop.getRole().equals("ROLE_ADMIN")) {
			System.out.println(username);
			cart = cartDAO.getByEmailid(username);
			session.setAttribute("size", cart.getCartLines());
		}
		session.setAttribute("user", shop);
		System.out.println();

		return "redirect:/";
	}

}
