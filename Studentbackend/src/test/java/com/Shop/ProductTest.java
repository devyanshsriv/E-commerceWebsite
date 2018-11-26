package com.Shop;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Shop.DAO.ProductDAO;
import com.Shop.Model.Product;

public class ProductTest {
	
	private static AnnotationConfigApplicationContext context=null;
	private static ProductDAO ProductDAO=null;
	

	@BeforeClass  //static function; always runs before a test
	public static void setUpBeforeClass() throws Exception {
		context=new AnnotationConfigApplicationContext();
		context.scan("com.Shop");
		context.refresh();
		ProductDAO=(ProductDAO)context.getBean("productDAO");
	}
	@Ignore
	@Test
	public void testAddProduct() {
		Product product=new Product();
		product.setName("Mobile");
		product.setCategoryid(101);
		product.setSupplierid(23);
		product.setQuantity("100");
		product.setUnitprice(50);
		assertTrue("Cannot save the value, please check the code!!", ProductDAO.addProduct(product));
	}
    
	@Ignore
	@Test
	public void testUpdateProduct() {
		Product Product=ProductDAO.getSingleProduct(2);

		assertTrue("Cannot save the value, please check the code!!", ProductDAO.updateProduct(Product));
	}

    @Ignore
	@Test
	public void testDeleteProduct() {
		
	}

	@Ignore
	@Test
	public void testGetSingleProduct() {
		fail("Not yet implemented");
	}


	@Ignore
	@Test
	public void testGetAllProduct() {
		List<Product> list=ProductDAO.getAllProductByKeyWords("laptop");
		
		for(Product pro:list) {
			System.out.println(pro.getProductid());
		}
		assertEquals("Cold not fetch the list", 1,list.size());
	}
	
	@Ignore
	@Test
	public void testGetProductByMinMaxPrice() {
		List<Product> list=ProductDAO.getProductByMinMaxPrice(500, 20000);
		for(Product pro:list) {
			System.out.println(pro.getProductid());
		}
		assertTrue("Could not fetch the list", list.size()>0);
	}
	
}
