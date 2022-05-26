package com.shop.bean;
/**
 * 订单内容项
 *
 */
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class Order {

    private int orderId;            //订单编号
    private String orderNum;		//订单号
    private int userId;             //用户编号
    private String orderDate;       //订单日期
    private double money;			//订单金额
    private int orderStatus;     	//订单状态
    
    private List<OrderItem> oItem=new ArrayList<>();//集合
    private User user=new User();

    public Order() {
    }

    public Order(Map<String, Object> map) {//将订单项集合元素获取指向
		this.setOrderId((int) map.get("orderId"));
		this.setOrderNum((String) map.get("orderNum"));
		this.setUserId((int) map.get("userId"));
		this.setOrderDate((String) map.get("orderDate"));
		this.setMoney((double) map.get("money"));
		this.setOrderStatus((int) map.get("orderStatus"));
	}

	public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    
    public String getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}

	public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

	public int getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(int orderStatus) {
		this.orderStatus = orderStatus;
	}



	public List<OrderItem> getoItem() {
		return oItem;
	}

	public void setoItem(List<OrderItem> oItem) {
		this.oItem = oItem;
	}

	public double getMoney() {
		return money;
	}

	public void setMoney(double money) {
		this.money = money;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
    
}
