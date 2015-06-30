package com.sshpobject.service;

import java.util.List;

import com.sshpobject.daoimpl.UserDaoImpl;
import com.sshpobject.model.User;
import com.sshpobject.model.UserGroup;
import com.sshpobject.model.UserOrganization;

public class UserService {
	private UserDaoImpl userDao;
	
	public void doRegister(User user){
		userDao.doRegister(user);
	}
	/*
	 * 登陆操作，返回是否登陆成功
	 */
	public List<User> doLogin(User user){
		return userDao.doLogin(user);
	}
	
	public List<UserOrganization> detailUser(User user){
		return userDao.detailUser(user);
	}
	
	public List<User> detailMe(User user){
		return userDao.detailMe(user);
	}
	
	public List<User> searchUser(String key){
		return userDao.searchUser(key);
	}
	
	public List<UserGroup> searchUserGroup(String key){
		return userDao.searchUserGroup(key);
	}

	public UserDaoImpl getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDaoImpl userDao) {
		this.userDao = userDao;
	}
}
