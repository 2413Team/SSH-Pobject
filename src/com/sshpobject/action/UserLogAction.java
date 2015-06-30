package com.sshpobject.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.sshpobject.model.UserLog;
import com.sshpobject.service.UserLogService;

public class UserLogAction extends ActionSupport {
	private List<UserLog> loglist;
	private UserLogService userLogService;
	
	public String getLog() throws Exception {
		loglist=userLogService.getLog();
		return SUCCESS;
	}

	public List<UserLog> getLoglist() {
		return loglist;
	}

	public void setLoglist(List<UserLog> loglist) {
		this.loglist = loglist;
	}

	public UserLogService getUserLogService() {
		return userLogService;
	}

	public void setUserLogService(UserLogService userLogService) {
		this.userLogService = userLogService;
	}
	
	
	
}
