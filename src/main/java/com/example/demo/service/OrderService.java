package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Order;
import com.example.demo.mapper.OrderMapper;

@Service
public class OrderService {
	@Autowired
	private OrderMapper orderMapper;
 
	public List<Order> findByID(String ord_id) {
		return orderMapper.findOrderByID(ord_id);
	}
 
	public Order insertOrder(Order order) {
		orderMapper.insertOrder(order);
		return order;
	}
	public List<Order> ListOrder(){
		return	orderMapper.ListOrder();
	}
	
	
	public int Update(Order order){
		return orderMapper.Update(order);
	}
	
	public int delete(int ord_id){
		return orderMapper.delete(ord_id);
	}
}