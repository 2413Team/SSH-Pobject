package com.sshpobject.dao;

import com.sshpobject.model.UserGroup;

public interface UserGroupDao {
	public void addGroup(UserGroup userGroup);
	public void deleteGroup(String groupId);
}
