package com.sshpobject.service;

import java.util.List;

import com.sshpobject.daoimpl.UserDaoImpl;
import com.sshpobject.model.User;

public class UserService {
	private UserDaoImpl userDao;
	
	public void doRegister(User user){
		userDao.doRegister(user);
	}
	/*
	 * ��½�����������Ƿ��½�ɹ�
	 */
	public List<User> doLogin(User user){
		return userDao.doLogin(user);
	}
	
	public List<User> detailUser(User user){
		return userDao.detailUser(user);
	}

	public UserDaoImpl getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDaoImpl userDao) {
		this.userDao = userDao;
	}
}
