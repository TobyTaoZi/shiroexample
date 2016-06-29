package com.shiro.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shiro.pojo.TbUser;
import com.shiro.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Resource
	private UserService userService;
	
	@RequestMapping("/getUserList.do")
	public String getUserList(HttpServletRequest request, HttpServletResponse response){
		List<TbUser> tbUserList = userService.getUserList();
		request.setAttribute("tbUserList", tbUserList);
		return "/user/userList";
	}
}
