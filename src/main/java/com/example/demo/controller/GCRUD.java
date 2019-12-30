package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entity.Gift;
import com.example.demo.service.GiftService;

@RestController
@RequestMapping(value = "/GCRUD", method = { RequestMethod.GET, RequestMethod.POST })
public class GCRUD {
	@Autowired
	private GiftService giftservice;
 
	@RequestMapping(value = "/gdelete", method = RequestMethod.GET)
	public String delete(int g_id) {
		int result = giftservice.delete(g_id);
		if (result >= 1) {
			return "删除成功";
		} else {
			return "删除失败";
		}
	}
 
	@RequestMapping(value = "/gupdate", method = RequestMethod.POST)
	public String Update(Gift gift) {
		int result = giftservice.Update(gift);
		if (result >= 1) {
			return "修改成功";
		} else {
			return "修改失败";
		}
 
	}
	
	@RequestMapping(value = "/ginsert", method = RequestMethod.POST)
	public Gift insert(Gift gift) {
		return giftservice.insertGift(gift);
		}
	
	@RequestMapping("/ListGift")
	@ResponseBody
	public List<Gift> ListGift(){
		return giftservice.ListGift();
	}
 
	@RequestMapping("/ListGiftByname")
	@ResponseBody
	public List<Gift> ListUserByname(String g_name){
		return giftservice.findByName(g_name);
	}
}

