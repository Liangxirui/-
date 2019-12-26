package edu.swjtuhc.demo.service;

import java.util.List;

import edu.swjtuhc.demo.model.SysUser;

public interface UserService {

	List<SysUser> list();//查询所有
	
	SysUser get(int id); // 查询单条
	
	 int add(SysUser sysUser); // 添加
	
	 void delete(int id); // 删除
	
	 int edit(SysUser sysUser); // 修改


}
