package com.shiro.dao;

import java.util.List;

import com.shiro.pojo.TbUser;

public interface TbUserDao {

    int deleteByPrimaryKey(Integer id);

    int insert(TbUser record);

    int insertSelective(TbUser record);

    TbUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TbUser record);

    int updateByPrimaryKeyWithBLOBs(TbUser record);

    int updateByPrimaryKey(TbUser record);

    TbUser getByUserName(String userName);
    
    List<TbUser> getUserList();
}