package com.shiro.serviceImpl;


import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shiro.dao.TbPermissionDao;
import com.shiro.dao.TbRoleDao;
import com.shiro.dao.TbUserDao;
import com.shiro.pojo.TbUser;
import com.shiro.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Resource
	private TbUserDao tbUserDao;
	
	@Resource
	private TbRoleDao tbRoleDao;
	
	@Resource
	private TbPermissionDao tbPermissionDao;
	
	
	public TbUser queryUser(String userName) {
		
		return  tbUserDao.getByUserName(userName);
	}

	public Set<String> getRoles(String userName) {
		
		return tbRoleDao.getRoles(userName);
	}
	
	public Set<String> getPermissions(String userName) {

		return tbPermissionDao.getPermissions(userName);
	}
	
	public int insertUser(TbUser tbUser) {
		
		return tbUserDao.insertSelective(tbUser);
	}
}
