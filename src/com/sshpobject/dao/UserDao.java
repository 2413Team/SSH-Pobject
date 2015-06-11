package com.sshpobject.dao;

import com.sshpobject.model.User;

public interface UserDao {
	public void doRegister(User user);
	public boolean doLogin(User user);
}
