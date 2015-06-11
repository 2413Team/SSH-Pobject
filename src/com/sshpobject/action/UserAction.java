package com.sshpobject.action;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;
import com.sshpobject.model.User;
import com.sshpobject.service.UserService;

public class UserAction extends ActionSupport {
	private UserService userService;
	private String birthday;
	private User user;

	public String doLogin() throws Exception{
		if(userService.doLogin(user))
			return SUCCESS;
		return "cantlogin";
	}
	
	public String doRegister() throws Exception{
		System.out.println("doregister");
		System.out.println(user.getEmail()+","+user.getName()+","+user.getPassword()+","+user.getSex());
		System.out.println("Birthday："+birthday);
		System.out.print("改正后："+birthday.replace(",", "-").replace(" ", "").replace("月", ""));
		birthday=birthday.replace(",", "-").replace(" ", "").replace("月", "");
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
