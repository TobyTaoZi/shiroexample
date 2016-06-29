package com.shiro.service;



import java.util.List;
import java.util.Set;

import com.shiro.pojo.TbUser;


public interface UserService {

	TbUser queryUser(String userName);
	
	Set<String> getRoles(String userName);
	
	Set<String> getPermissions(String userName);
	
	int insertUser(TbUser tbUser);
	
	List<TbUser> getUserList();
}
