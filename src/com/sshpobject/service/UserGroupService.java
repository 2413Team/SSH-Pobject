package com.sshpobject.service;

import com.sshpobject.daoimpl.UserGroupDaoImpl;
import com.sshpobject.model.UserGroup;

public class UserGroupService {
	private UserGroupDaoImpl userGroupDao;
	
	public void addGroup(UserGroup userGroup){
		userGroupDao.addGroup(userGroup);
	}
	
	public void deleteGroup(String groupId){
		userGroupDao.deleteGroup(groupId);
	}

	public UserGroupDaoImpl getUserGroupDao() {
		return userGroupDao;
	}

	public void setUserGroupDao(UserGroupDaoImpl userGroupDao) {
		this.userGroupDao = userGroupDao;
	}
	
	
}
