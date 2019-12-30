package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Gift;
import com.example.demo.mapper.GiftMapper;

@Service
public class GiftService {
	@Autowired
	private GiftMapper giftMapper;
 
	public List<Gift> findByName(String g_name) {
		return giftMapper.findGiftByName(g_name);
	}
 
	public Gift insertGift(Gift gift) {
		giftMapper.insertGift(gift);
		return gift;
	}
	public List<Gift> ListGift(){
		return	giftMapper.ListGift();
	}
	
	
	public int Update(Gift gift){
		return giftMapper.Update(gift);
	}
	
	public int delete(int g_id){
		return giftMapper.delete(g_id);
	}
}

