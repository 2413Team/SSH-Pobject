package com.sshpobject.dao;

import java.util.List;

import com.sshpobject.model.UserLog;

public interface UserLogDao {
	public void addLog(UserLog log);
	public List<UserLog> getLog();
}
