package com.Shop.DAO;

import java.util.List;

import com.Shop.Model.OrderItems;
import com.Shop.Model.OrderTable;

public interface OrderDAO {
	
	//To add order details
	public boolean addOrder(OrderTable order);
	public boolean updateOrder(OrderTable order);
	public OrderTable getOrderByEmail(String email);

	
	
	
	//To add single orderItem
	public boolean addOrderItem(OrderItems orderItems);
    public List<OrderItems> getAllOrderItemsByEmail(String email);
	public List<OrderItems> getOrderItemListByOrder(OrderTable orderTable);
}
