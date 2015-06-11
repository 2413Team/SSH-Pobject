package com.sshpobject.action;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sshpobject.model.User;
import com.sshpobject.service.UserService;

public class UserAction extends ActionSupport {
	private UserService userService;
	private String birthday;
	private User user;

	public String doLogin() throws Exception{
		List<User> userlist=userService.doLogin(user);
		Map session=ActionContext.getContext().getSession();
		if(!userlist.isEmpty()){
			user=userlist.get(0);
			DateFormat fmt =new SimpleDateFormat("yyyy-MM-dd"); 
			String birthday=fmt.format(user.getBirthday());
			Date date = fmt.parse(birthday);
			System.out.println(date.toString());
			user.setBirthday(date);
			session.put("user", user);
			return SUCCESS;
		}
		else
	    	return "cantlogin";
	}
	
	public String doRegister() throws Exception{
		DateFormat fmt =new SimpleDateFormat("yyyy-MM-dd"); 
		Date date = fmt.parse(birthday);
		user.setBirthday(date);
		userService.doRegister(user);
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
	
}
