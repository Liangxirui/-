package edu.swjtuhc.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.swjtuhc.demo.model.SysUser;

@Mapper
public interface UserMapper {
		public List<SysUser> selectAllUsers();//查询所有
		public List<SysUser> listM();
		
		public SysUser getM(int u_id); // 查询单条

		public int addM(SysUser sysUser); // 添加
	
		public void deleteM(int u_id); // 删除
		
		public int editM(SysUser sysUser); // 修改

}
