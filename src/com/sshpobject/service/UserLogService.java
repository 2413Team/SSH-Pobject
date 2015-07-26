package com.sshpobject.service;

import java.util.List;

import com.sshpobject.daoimpl.UserLogDaoImpl;
import com.sshpobject.model.UserLog;

public class UserLogService {
	private UserLogDaoImpl dao;

	public void addLog(UserLog log){
		dao.addLog(log);
	}
	
	public  List<UserLog> getLog(){
		return dao.getLog();
	}

	public UserLogDaoImpl getDao() {
		return dao;
	}

	public void setDao(UserLogDaoImpl dao) {
		this.dao = dao;
	}
	
	
}
