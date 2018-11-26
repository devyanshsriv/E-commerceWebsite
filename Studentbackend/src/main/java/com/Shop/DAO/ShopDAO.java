package com.Shop.DAO;

import java.util.List;

import com.Shop.Model.Shop;


public interface ShopDAO {
	
	public boolean addShop(Shop shop);
	public boolean updateShop(Shop shop);
	public boolean deleteShop(int userid);
	
    public Shop getSingleShop(int userid);
    public List<Shop> getAllShop();
	public Shop getUserByEmail(String username);
	
    
}
