package edu.swjtuhc.demo.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.swjtuhc.demo.mapper.UserMapper;
import edu.swjtuhc.demo.model.SysUser;
import edu.swjtuhc.demo.service.UserService;



@Service("")

public class UserServiceImpl implements UserService{
		@Autowired
		UserMapper userMapper;
		
		@Override		
		public List<SysUser> list(){
			return userMapper.listM();
		}
		@Override		
		public SysUser get(int u_id) {
			// TODO Auto-generated method stub
			return userMapper.getM(u_id);
		}
	 
		@Override
		public int add(SysUser sysUser) {
			// TODO Auto-generated method stub
			return userMapper.addM(sysUser);
		}
	 
		@Override
		public void delete(int u_id) {
			// TODO Auto-generated method stub
			userMapper.deleteM(u_id);
		}
	 
		@Override
		public int edit(SysUser sysUser) {
			// TODO Auto-generated method stub
			return userMapper.editM(sysUser);
		}
	 
}
