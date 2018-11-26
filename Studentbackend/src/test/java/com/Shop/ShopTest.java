package com.Shop;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Shop.DAO.ShopDAO;
import com.Shop.Model.Shop;

public class ShopTest {
	
	private static AnnotationConfigApplicationContext context=null;
	private static ShopDAO shopDAO=null;
	

	@BeforeClass  //static function; always runs before a test
	public static void setUpBeforeClass() throws Exception {
		context=new AnnotationConfigApplicationContext();
		context.scan("com.Shop");
		context.refresh();
		shopDAO=(ShopDAO)context.getBean("shopDAO");
	}

    @Ignore
	@Test
	public void testAddShop() {
		Shop shop=new Shop();
		shop.setName("Ashish");
		shop.setAddress("Barabanki");
		shop.setMobile("752361213");
		assertTrue("Cannot save the value, please check the code!!", shopDAO.addShop(shop));
	}
    
	@Ignore
	@Test
	public void testUpdateShop() {
		Shop shop=shopDAO.getSingleShop(2);
		shop.setAddress("Agra");
		assertTrue("Cannot save the value, please check the code!!", shopDAO.updateShop(shop));
	}

    @Ignore
	@Test
	public void testDeleteShop() {
		
	}

	
	@Test
	public void testGetSingleShop() {
		fail("Not yet implemented");
	}


	@Test
	public void testGetAllShop() {
		fail("Not yet implemented");
	}

}
