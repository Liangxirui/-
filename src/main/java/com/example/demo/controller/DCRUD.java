package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entity.Order;
import com.example.demo.service.OrderService;

@RestController
@RequestMapping(value = "/DCRUD", method = { RequestMethod.GET, RequestMethod.POST })
public class DCRUD {
	@Autowired
	private OrderService orderService;
 
	@RequestMapping(value = "/ddelete", method = RequestMethod.GET)
	public String delete(int ord_id) {
		int result = orderService.delete(ord_id);
		if (result >= 1) {
			return "删除成功";
		} else {
			return "删除失败";
		}
	}
 
	@RequestMapping(value = "/dupdate", method = RequestMethod.POST)
	public String Update(Order order) {
		int result = orderService.Update(order);
		if (result >= 1) {
			return "修改成功";
		} else {
			return "修改失败";
		}
 
	}
	
	@RequestMapping(value = "/dinsert", method = RequestMethod.POST)
	public Order insert(Order order) {
		return orderService.insertOrder(order);
		}
	
	@RequestMapping("/ListOrder")
	@ResponseBody
	public List<Order> ListOrder(){
		return orderService.ListOrder();
	}
 
	@RequestMapping("/ListOrderByID")
	@ResponseBody
	public List<Order> ListOrderByID(String ord_id){
		return orderService.findByID(ord_id);
	}
}