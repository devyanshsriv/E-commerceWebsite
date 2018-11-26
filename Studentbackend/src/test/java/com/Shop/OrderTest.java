package com.Shop;

import static org.junit.Assert.assertTrue;

import java.util.ArrayList;
import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Shop.DAO.CartDAO;
import com.Shop.DAO.OrderDAO;
import com.Shop.DAO.ShopDAO;
import com.Shop.Model.Cart;
import com.Shop.Model.CartLine;
import com.Shop.Model.OrderItems;
import com.Shop.Model.OrderTable;
import com.Shop.Model.Shop;

public class OrderTest {
	private static AnnotationConfigApplicationContext context=null;
	private static OrderDAO orderDAO=null;
	private static ShopDAO ShopDAO=null;
	private static CartDAO cartDAO=null;


	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		context=new AnnotationConfigApplicationContext();
		context.scan("com.Shop");
		context.refresh();
		orderDAO=(OrderDAO)context.getBean("orderDAO");
		ShopDAO=(ShopDAO)context.getBean("shopDAO");
		cartDAO=(CartDAO)context.getBean("cartDAO");
	}
	@Ignore
	@Test
	public void testaddOrder() {
		Shop shop=new Shop();
		shop= ShopDAO.getUserByEmail("dev.sri1913@gmail.com");
		OrderTable order=new OrderTable();
		order.setName(shop.getName());
		order.setAddress(shop.getAddress());
		order.setEmail(shop.getEmail());
		order.setOrderitems(new ArrayList<OrderItems>());
		assertTrue("Fail to add order Details",orderDAO.addOrder(order));
		
	}
	@Ignore
	@Test
	public void testaddOrderItem() {
		OrderItems orderItem=new OrderItems();
		Shop shop=null;
		shop= ShopDAO.getUserByEmail("dev.sri1913@gmail.com");
		Cart cart=cartDAO.getByEmailid(shop.getEmail());
		List<CartLine> list=cartDAO.list(cart.getCartid());
		OrderTable orderTable=orderDAO.getOrderByEmail(shop.getEmail());
		
		for(CartLine cartLine:list) {
			orderItem.setBuyingPrice(cartLine.getBuyingPrice());
			orderItem.setTotal(cartLine.getTotal());
			orderItem.setProduct(cartLine.getProduct());
			orderItem.setOrder1(orderTable);
			orderItem.setProductCount(cartLine.getProductCount());
			orderItem.setOrderId(orderTable.getId());
			orderTable.getOrderitems().add(orderItem);
			
			orderDAO.updateOrder(orderTable);
			assertTrue("Add oder Item Fail",orderDAO.addOrderItem(orderItem));
		}
		
		
	}
	@Test
	public void testOrder() {
		OrderTable orderTable=orderDAO.getOrderByEmail("dev.sri1913@gmail.com");
		List<OrderItems> lst=orderTable.getOrderitems();
		
		for(OrderItems orderItem:lst) {
			System.out.println(orderItem.getProduct().getName());
		}
	}

}
