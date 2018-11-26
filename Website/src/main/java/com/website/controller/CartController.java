package com.website.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Shop.DAO.CartDAO;
import com.Shop.DAO.ProductDAO;
import com.Shop.Model.Cart;
import com.Shop.Model.CartLine;
import com.Shop.Model.Product;
import com.Shop.Model.Shop;

@Controller
public class CartController {
	
	@Autowired
	CartDAO cartDAO;

	@Autowired
	Cart cart;
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CartLine cartLine;
	
	
	@RequestMapping(value = "/addToCart/{prodid}")
	public String pr1(@PathVariable("prodid") int prodid, @RequestParam("qty") int quntity, Model model) {
		Product obj = productDAO.getSingleProduct(prodid);

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String email = auth.getName();

		Cart cart = cartDAO.getByEmailid(email);
		System.out.println("about to print sql-------------------------");
		if (cartDAO.getByCartAndProduct(cart.getCartid(), obj.getProductid()) != null) {
			cartLine = cartDAO.getByCartAndProduct(cart.getCartid(), obj.getProductid());
			cartLine.setProductCount(cartLine.getProductCount()+1);
			cartLine.setTotal(quntity * cartLine.getProduct().getUnitprice());
			cartDAO.update(cartLine);
		} else {
			cartLine.setProduct(obj);
			cartLine.setProductCount(quntity);
			cartLine.setBuyingPrice(obj.getUnitprice());
			cartLine.setCartId(cart.getCartid());
			cartLine.setTotal(quntity * obj.getUnitprice());
			cartDAO.add(cartLine);
		}
		cart.setCartLines(cartDAO.listAvailable(cart.getCartid()).size());
		List<CartLine> lst = cartDAO.list(cart.getCartid());
		cart.setGrandTotal(this.getGrandTotal(lst));
		cart.setCartLines(lst.size());
		cartDAO.updateCart(cart);

		return "redirect:/ShoppingCart";

	}
	
	@RequestMapping(value="/updatecart/{prodid}")
	public String updatecart(@PathVariable("prodid") int prodid,@RequestParam("qty") int qty)
	{
		Product obj = productDAO.getSingleProduct(prodid);

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String email = auth.getName();

		Cart cart = cartDAO.getByEmailid(email);
		System.out.println("about to print sql-------------------------");
		if (cartDAO.getByCartAndProduct(cart.getCartid(), obj.getProductid()) != null) {
			cartLine = cartDAO.getByCartAndProduct(cart.getCartid(), obj.getProductid());
			cartLine.setProductCount(qty);
			cartLine.setTotal(qty * cartLine.getProduct().getUnitprice());
			cartDAO.update(cartLine);
		}
		

		cart.setCartLines(cartDAO.listAvailable(cart.getCartid()).size());
		List<CartLine> lst = cartDAO.list(cart.getCartid());
		cart.setGrandTotal(this.getGrandTotal(lst));
		cart.setCartLines(lst.size());
		cartDAO.updateCart(cart);
		
		return "redirect:/ShoppingCart";
	}
	@RequestMapping("ShoppingCart")
	public String shopingcart(Model model, HttpSession session) {

		boolean loggedIn = (boolean) session.getAttribute("loggedIn");
		if (!loggedIn) {
			return "redirect:/login";
		}

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String email = auth.getName();

		Cart cart = cartDAO.getByEmailid(email);
		List<CartLine> lst = cartDAO.listAvailable(cart.getCartid());
		model.addAttribute("cartlist", lst);
		session.setAttribute("size", cart.getCartLines());
		model.addAttribute("grandTotal", cart.getGrandTotal());
		cart.setGrandTotal(this.getGrandTotal(lst));
		cart.setCartLines(lst.size());
		cartDAO.updateCart(cart);

		return "ShoppingCart";
	}

	@RequestMapping(value = "/remove/{id}")
	public String goToDelete(@PathVariable("id") int id, Model model, HttpSession session) {

		boolean loggedIn = (boolean) session.getAttribute("loggedIn");
		if (!loggedIn) {
			return "redirect:/login";
		}

		CartLine cartLine = cartDAO.get(id);
		cartDAO.remove(cartLine);

		Shop shop = (Shop) session.getAttribute("user");

		cart = cartDAO.getByEmailid(shop.getEmail());
		List<CartLine> lst = cartDAO.list(cart.getCartid());
		cart.setGrandTotal(this.getGrandTotal(lst));
		cart.setCartLines(lst.size());
		cartDAO.updateCart(cart);
		return "redirect:/ShoppingCart";
	}

	private double getGrandTotal(List<CartLine> lst) {
		int grandtotal = 0;
		for (CartLine cartline : lst) {
			grandtotal += cartline.getTotal();
		}
		return grandtotal;
	}

}
