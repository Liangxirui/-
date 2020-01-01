package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
 
import com.example.demo.entity.Object;
@Mapper

public interface ObjectMapper {
		
		List<Object> findObjectByName(String o_name);
		
		public List<Object> ListObject();
		
		public int insertObject(Object object);
		
		public int delete(int o_id);
		
		public int Update(Object object);
		
	

}