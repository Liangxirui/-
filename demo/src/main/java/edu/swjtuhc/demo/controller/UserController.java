package edu.swjtuhc.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import edu.swjtuhc.demo.model.SysUser;
import edu.swjtuhc.demo.service.UserService;

@RestController
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserService userService;
 
	// 返回
	@RequestMapping("fanhui")
	public ModelAndView fanhui() {
		ModelAndView mav = new ModelAndView("redirect:/list");
		return mav;
	}
 
	// 查询列表
	@RequestMapping("list")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		List<SysUser> ls = userService.list();
		mav.addObject("ls", ls);
		mav.setViewName("index");
		return mav;
	}
 
	// 查询明细
	@RequestMapping("get")
	public ModelAndView get(int id) {
		SysUser c = userService.get(id);
		ModelAndView mav = new ModelAndView("detail");
		mav.addObject("c", c);
		return mav;
	}
 
	// 单条明细修改跳转到修改页面
	@RequestMapping("editgo")
	public ModelAndView editgo(int id) {
		SysUser c = userService.get(id);
		ModelAndView mav = new ModelAndView("edit");
		mav.addObject("c", c);
		return mav;
	}
 
	// 修改
	@RequestMapping("edit")
	public ModelAndView edit(SysUser sysUser) {
		userService.edit(sysUser);
		ModelAndView mav = new ModelAndView("redirect:/list");
		return mav;
	}
 
	// 删除
	@RequestMapping("delete")
	public ModelAndView delete(int id) {
		userService.delete(id);
		ModelAndView mav = new ModelAndView("redirect:/list");
		return mav;
	}
 
	// 添加   跳转 到添加页面
	@RequestMapping("addgo")
	public ModelAndView addgo() {
		ModelAndView mav = new ModelAndView("add");
		return mav;
	}
 
	// 添加数据
	@RequestMapping("add")
	public ModelAndView add(SysUser sysUser) {
		userService.add(sysUser);
		ModelAndView mav = new ModelAndView("redirect:/list");
		return mav;
	}

}

