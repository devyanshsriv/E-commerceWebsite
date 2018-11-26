package com.website.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Shop.DAO.CartDAO;
import com.Shop.DAO.OrderDAO;
import com.Shop.DAO.ShopDAO;
import com.Shop.Model.Cart;
import com.Shop.Model.CartLine;
import com.Shop.Model.OrderItems;
import com.Shop.Model.OrderTable;
import com.Shop.Model.Shop;

@Controller
public class PaymentController {
	
	@Autowired
	ShopDAO shopDAO;

	@Autowired
	CartDAO cartDAO;

	@Autowired
	Cart cart;
	
	@Autowired
	OrderDAO orderDAO;
	
	
	@RequestMapping(value = "/usershow")
	public String GoToUser(Model model, HttpSession session) {
		Shop obj = (Shop) session.getAttribute("user");
		model.addAttribute("shop", obj);
		return "usershow";
	}

	@RequestMapping(value = "/billing", method = RequestMethod.POST)
	public String updateuser(@ModelAttribute("shop") Shop Shop, Model model) {
		shopDAO.updateShop(Shop);
		System.out.println(Shop.getEmail());

		model.addAttribute("grandTotal", cartDAO.getByEmailid(Shop.getEmail()).getGrandTotal());
		return "payment";
	}

	@RequestMapping(value = "/pay", method = RequestMethod.POST)
	public String pay(@ModelAttribute("shop") Shop Shop, Model model) {
		return "redirect:/checkout";
	}

	@RequestMapping("/checkout")
	public String checkout(Model model, HttpSession session) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String email = auth.getName();
		Shop shop=shopDAO.getUserByEmail(email);
		if(shop==null) {
			return "redirect:/login";
		}

		Cart cart = cartDAO.getByEmailid(email);
		
		//add order
		OrderTable order=new OrderTable();
		order.setName(shop.getName());
		order.setAddress(shop.getAddress());
		order.setEmail(shop.getEmail());
		order.setOrderitems(new ArrayList<OrderItems>());
		orderDAO.addOrder(order);
		
		//add order item
		OrderItems orderItem=new OrderItems();
		List<CartLine> list=cartDAO.list(cart.getCartid());
		OrderTable orderTable=orderDAO.getOrderByEmail(shop.getEmail());
		
		for(CartLine cartLine:list) {
			orderItem.setBuyingPrice(cartLine.getBuyingPrice());
			orderItem.setTotal(cartLine.getTotal());
			orderItem.setProduct(cartLine.getProduct());
			orderItem.setOrder1(orderTable);
			orderItem.setProductCount(cartLine.getProductCount());
			
			orderDAO.addOrderItem(orderItem);
			cartDAO.remove(cartLine);
		}
		orderTable.setOrderitems(orderDAO.getOrderItemListByOrder(orderTable));
		orderDAO.updateOrder(orderTable);
		model.addAttribute("total", cart.getGrandTotal());
		model.addAttribute("cartlist", orderTable.getOrderitems());
		
		cart.setGrandTotal(0);
		cart.setCartLines(0);
		session.setAttribute("size", 0);
		cartDAO.updateCart(cart);
		
		return "checkout";
	}

	@RequestMapping("/continueShopping")
	public String ContShop() {
		return "index";
	}

}
