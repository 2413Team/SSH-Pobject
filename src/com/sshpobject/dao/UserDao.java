package com.sshpobject.dao;

import java.util.List;

import com.sshpobject.model.User;
import com.sshpobject.model.UserOrganization;

public interface UserDao {
	public void doRegister(User user);
	public List<User> doLogin(User user);
	public List<User> detailMe(User user);
	public List<UserOrganization> detailUser(User user);
}
