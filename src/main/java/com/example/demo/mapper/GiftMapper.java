package com.example.demo.mapper;


import java.util.List;
 
import org.apache.ibatis.annotations.Mapper;
 
import com.example.demo.entity.Gift;
@Mapper

public interface GiftMapper {
		
		List<Gift> findGiftByName(String g_name);
		
		public List<Gift> ListGift();
		
		public int insertGift(Gift gift);
		
		public int delete(int g_id);
		
		public int Update(Gift gift);
		
	

}
