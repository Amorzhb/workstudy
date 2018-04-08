package com.lzl.work.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import com.lzl.work.bean.Order;
import com.lzl.work.dao.OrderDao;
import com.lzl.work.student.bean.Student;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class OrderAction extends ActionSupport{

	private OrderDao orderDao;
	private Order order;
	
	private int state;
	
	private List<Order> list;
	
	public String addOrder(){
		this.order.setComment(null);
		this.order.setNum(new SimpleDateFormat("yyyyMMdd").format(new Date()) + new Random().nextInt(100000));
		this.order.setState(1);
		Student s = (Student)ActionContext.getContext().getSession().get("student");
		this.order.setStudent(s);
		this.order.setOtime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format( new Date()));
		this.orderDao.add(order);
		
		return "addOrder";
	}
	
	public String comment(){
		Student s = (Student)ActionContext.getContext().getSession().get("student");
		this.order.setStudent(s);
		this.orderDao.comment(order);
		return "comment";
	}
	
	public String delete(){
		this.orderDao.delete(order);
		return "delete";
	}
	
	public String handle(){
		this.orderDao.handle(order.getId(), state);
		return "handle";
	}

	public String orderList(){
		Student s = (Student)ActionContext.getContext().getSession().get("student");
		this.list = this.orderDao.listByStu(s.getId());
		return "orderList";
	}
	
	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public OrderDao getOrderDao() {
		return orderDao;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

	public List<Order> getList() {
		return list;
	}

	public void setList(List<Order> list) {
		this.list = list;
	}
}
