package com.example.demo.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
import com.example.demo.entity.Object;
import com.example.demo.mapper.ObjectMapper;
 
@Service
public class ObjectService {
	@Autowired
	private ObjectMapper objectMapper;
 
	public List<Object> findByName(String o_name) {
		return objectMapper.findObjectByName(o_name);
	}
 
	public Object insertObject(Object object) {
		objectMapper.insertObject(object);
		return object;
	}
	public List<Object> ListObject(){
		return	objectMapper.ListObject();
	}
	
	
	public int Update(Object object){
		return objectMapper.Update(object);
	}
	
	public int delete(int o_id){
		return objectMapper.delete(o_id);
	}
}
