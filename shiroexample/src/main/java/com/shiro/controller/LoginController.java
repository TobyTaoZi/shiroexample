package com.shiro.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shiro.pojo.TbUser;
import com.shiro.service.UserService;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Resource
	private UserService userService;
	
	@RequestMapping("/dologin.do")
	public String doLogin(HttpServletRequest request, HttpServletResponse response,  TbUser user) throws UnknownAccountException{
		Subject subject = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(),user.getPassword());
		try { 
			subject.login(token);
			return "/success";
		} catch (UnknownAccountException uae) {
			request.setAttribute("errorMsg", "用户不存在或密码错误");
		} catch (IncorrectCredentialsException ice) {
			request.setAttribute("errorMsg", "用户不存在或密码错误");
		} catch (LockedAccountException lae) {
			request.setAttribute("errorMsg", "用户已被锁定");
		} catch (AuthenticationException ae) {
			request.setAttribute("errorMsg", "未知错误");
        }
		return "/index";
	}
	
	@RequestMapping("/register.do")
	public String doRegister(HttpServletRequest request, HttpServletResponse response,  TbUser user){
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		user.setCreatetime(sf.format(new Date()));
		user.setRoleid(1);
		int i = userService.insertUser(user);
		if(i == 1){
			request.setAttribute("errorMsg", "注册成功");
			return "/index";
		}
		request.setAttribute("errorMsg", "注册失败");
		return "/index";
	}
}
