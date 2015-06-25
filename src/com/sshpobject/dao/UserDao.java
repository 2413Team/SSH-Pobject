package com.sshpobject.dao;

import java.util.List;

import com.sshpobject.model.User;

public interface UserDao {
	public void doRegister(User user);
	public List<User> doLogin(User user);
	public List<User> detailUser(User user);
}
