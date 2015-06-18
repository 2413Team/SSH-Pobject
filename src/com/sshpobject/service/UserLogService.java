package com.sshpobject.service;

import com.sshpobject.daoimpl.UserLogDaoImpl;
import com.sshpobject.model.UserLog;

public class UserLogService {
	private UserLogDaoImpl dao;

	public void addLog(UserLog log){
		dao.addLog(log);
	}

	public UserLogDaoImpl getDao() {
		return dao;
	}

	public void setDao(UserLogDaoImpl dao) {
		this.dao = dao;
	}
	
	
}
