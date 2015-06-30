package com.sshpobject.action;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sshpobject.model.User;
import com.sshpobject.model.UserGroup;
import com.sshpobject.model.UserOrganization;
import com.sshpobject.service.UserService;

public class UserAction extends ActionSupport {
	private UserService userService;
	private String birthday;
	private User user;
	private List<User> userlist;
	private List<UserOrganization> uoList;
	private List<UserGroup> groupList;

	public String doLogin() throws Exception{		
		List<User> userlist=userService.doLogin(user);
		Map session=ActionContext.getContext().getSession();
		if(!userlist.isEmpty()){
			user=userlist.get(0);
			DateFormat fmt =new SimpleDateFormat("yyyy-MM-dd"); 
			String birthday=fmt.format(user.getBirthday());
			Date date = fmt.parse(birthday);
			user.setBirthday(date);
			session.put("user", user);
			if(user.getUserGroup().getId() == 3)
				return "adminlogin";
			return SUCCESS;
		}
		else
	    	return "cantlogin";
	}
	
	public String doRegister() throws Exception{
		birthday=birthday.replace(",", "-").replace(" ", "").replace("月", "");
		DateFormat fmt =new SimpleDateFormat("yyyy-MM-dd"); 
		Date date = fmt.parse(birthday);
		user.setBirthday(date);
		userService.doRegister(user);
		return SUCCESS;
	}
	
	public String detailUser() throws Exception{
		user=new User();
		HttpServletRequest request = ServletActionContext.getRequest();
		user.setId(Integer.parseInt(request.getParameter("userid")));
		uoList=userService.detailUser(user);
		userlist=new ArrayList<User>();
		if(uoList.size()>0)
			userlist.add(uoList.get(0).getUser());
		return SUCCESS;
	}
	
	public String detailMe() throws Exception{
		Map session=ActionContext.getContext().getSession();
		if(session.get("user")!=null)
			user=(User)session.get("user");
		else
			throw new Exception("请先登录");
		userlist=userService.detailMe(user);
		user=(User)userlist.get(0);
		if(user.getSex().equals("M"))
			user.setSex("男");
		else
			user.setSex("女");
		userlist.set(0, user);
		return SUCCESS;
	}
	
	public String searchUser() throws Exception{
		userlist=userService.searchUser(user.getName());
		return SUCCESS;
	}
	
	public String searchUserGroup() throws Exception{
		groupList=userService.searchUserGroup(user.getName());
		return SUCCESS;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public List<User> getUserlist() {
		return userlist;
	}

	public void setUserlist(List<User> userlist) {
		this.userlist = userlist;
	}

	public List<UserOrganization> getUoList() {
		return uoList;
	}

	public void setUoList(List<UserOrganization> uoList) {
		this.uoList = uoList;
	}

	public List<UserGroup> getGroupList() {
		return groupList;
	}

	public void setGroupList(List<UserGroup> groupList) {
		this.groupList = groupList;
	}
	
	
	
}
