package com.shop.dao;

import java.util.List;

import com.shop.bean.OrderItem;

/** 
*订单项接口
*/
public interface OrderItemDao {
	//增加一个订单项记录
	boolean orderAdd(OrderItem orderItem);
	//通过订单编号查找订单项
	List<OrderItem> findItemByOrderId(int orderId);
}
