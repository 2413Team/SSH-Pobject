package com.sshpobject.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.sshpobject.model.Liuyan;
import com.sshpobject.service.LiuyanService;

public class LiuyanAction extends ActionSupport {
	private LiuyanService liuyanService;
	private List<Liuyan> list;
	
	public String addLiuyan () throws Exception{
		return SUCCESS;
	}
	
	public String getAllLiuyan() throws Exception{
		return SUCCESS;
	}
	
	public LiuyanService getLiuyanService() {
		return liuyanService;
	}
	public void setLiuyanService(LiuyanService liuyanService) {
		this.liuyanService = liuyanService;
	}
	public List<Liuyan> getList() {
		return list;
	}
	public void setList(List<Liuyan> list) {
		this.list = list;
	}
	
	
}
