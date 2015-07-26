package com.sshpobject.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.sshpobject.model.UserGroup;
import com.sshpobject.service.UserGroupService;

public class UserGroupAction extends ActionSupport {
	private UserGroupService userGroupService;
	private UserGroup userGroup;
	public String addGroup() throws Exception{
		System.out.println(userGroup.getValue());
		userGroupService.addGroup(userGroup);
		return SUCCESS;
	}
	public String deleteGroup() throws Exception{
		HttpServletRequest request = ServletActionContext.getRequest();
		userGroupService.deleteGroup(request.getParameter("groupid"));
		return SUCCESS;
	}
	public UserGroupService getUserGroupService() {
		return userGroupService;
	}
	public void setUserGroupService(UserGroupService userGroupService) {
		this.userGroupService = userGroupService;
	}
	public UserGroup getUserGroup() {
		return userGroup;
	}
	public void setUserGroup(UserGroup userGroup) {
		this.userGroup = userGroup;
	}
	
	
}
