package com.Shop;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Shop.DAO.CategoryDAO;
import com.Shop.DAO.ProductDAO;
import com.Shop.DAO.SupplierDAO;
import com.Shop.Model.Supplier;

public class SupplierTest {
	
	private static AnnotationConfigApplicationContext context=null;
	private static SupplierDAO SupplierDAO=null;
	

	@BeforeClass  //static function; always runs before a test
	public static void setUpBeforeClass() throws Exception {
		context=new AnnotationConfigApplicationContext();
		context.scan("com.Shop");
		context.refresh();
		SupplierDAO=(SupplierDAO)context.getBean("supplierDAO");
	}

	@Test
	public void testAddCategory() {
		Supplier supplier=new Supplier();
		supplier.setSupplierName("Ahmad Hussain");
		supplier.setDescription("NULL");
		
		assertTrue("Cannot save the value, please check the code!!", SupplierDAO.addSupplier(supplier));
	}
    
	@Ignore
	@Test
	public void testUpdateProduct() {
		Supplier Supplier=SupplierDAO.getSingleSupplier(2);

		assertTrue("Cannot save the value, please check the code!!", SupplierDAO.updateSupplier(Supplier));
	}

    @Ignore
	@Test
	public void testDeleteProduct() {
		
	}

	
	@Test
	public void testGetSingleProduct() {
		fail("Not yet implemented");
	}


	@Test
	public void testGetAllProduct() {
		fail("Not yet implemented");
	}

}
