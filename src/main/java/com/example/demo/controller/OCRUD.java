package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
 
import com.example.demo.entity.Object;
import com.example.demo.service.ObjectService;

	@RestController
	@RequestMapping(value = "/OCRUD", method = { RequestMethod.GET, RequestMethod.POST })
	public class OCRUD {
		@Autowired
		private ObjectService objectservice;
	 
		@RequestMapping(value = "/odelete", method = RequestMethod.GET)
		public String delete(int o_id) {
			int result = objectservice.delete(o_id);
			if (result >= 1) {
				return "删除成功";
			} else {
				return "删除失败";
			}
		}
	 
		@RequestMapping(value = "/oupdate", method = RequestMethod.POST)
		public String update(Object object) {
			int result = objectservice.Update(object);
			if (result >= 1) {
				return "修改成功";
			} else {
				return "修改失败";
			}
	 
		}
		
		@RequestMapping(value = "/oinsert", method = RequestMethod.POST)
		public Object insert(Object object) {
			return objectservice.insertObject(object);
			}
		
		@RequestMapping("/ListObject")
		@ResponseBody
		public List<Object> ListObject(){
			return objectservice.ListObject();
		}
	 
		@RequestMapping("/ListObjectByname")
		@ResponseBody
		public List<Object> ListObjectByname(String o_name){
			return objectservice.findByName(o_name);
		}
		
	}

