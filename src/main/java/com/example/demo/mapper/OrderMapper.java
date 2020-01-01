package com.example.demo.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import com.example.demo.entity.Order;
@Mapper
public interface OrderMapper {
	List<Order> findOrderByID(String ord_id);
	
	public List<Order> ListOrder();
	
	public int insertOrder(Order order);
	
	public int delete(int ord_id);
	
	public int Update(Order order);
	
}
