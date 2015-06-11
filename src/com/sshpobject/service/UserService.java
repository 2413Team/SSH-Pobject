package com.sshpobject.service;

import com.sshpobject.daoimpl.UserDaoImpl;
import com.sshpobject.model.User;

public class UserService {
	private UserDaoImpl userDao;
	
	public void doRegister(User user){
		userDao.doRegister(user);
	}
	/*
	 * 登陆操作，返回是否登陆成功
	 */
	public boolean doLogin(User user){
		return userDao.doLogin(user);
	}

	public UserDaoImpl getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDaoImpl userDao) {
		this.userDao = userDao;
	}
}
