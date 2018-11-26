package com.Shop.DAO;

import java.util.List;

import com.Shop.Model.Product;


public interface ProductDAO {
	
	public boolean addProduct(Product product);
	public boolean updateProduct(Product product);
	public boolean deleteProduct(int productid);
	
    public Product getSingleProduct(int productid);
    public List<Product> getAllProduct();
    public List<Product> getAllProductByKeyWords(String keyword);
    List<Product> getProductByCategory(int categoryid);
    List<Product> getProductByMinMaxPrice(double minprice, double maxprice);
    
}
