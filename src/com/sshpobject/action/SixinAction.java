package com.sshpobject.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sshpobject.model.Sixin;
import com.sshpobject.model.User;
import com.sshpobject.service.SixinService;

public class SixinAction extends ActionSupport {
	private Sixin sixin;
	private SixinService sixinService;
	private List<Sixin> sixinList;
	
	public String sendSixin() throws Exception{
		Map session=ActionContext.getContext().getSession();
		User user=(User)session.get("user");
		sixinService.sendSixin(sixin, user);
		return SUCCESS;
	}
	
	public String getSixinS() throws Exception{
		Map session=ActionContext.getContext().getSession();
		User user=(User)session.get("user");
		sixinList=sixinService.getSixin(user);
		return SUCCESS;
	}

	public Sixin getSixin() {
		return sixin;
	}

	public void setSixin(Sixin sixin){
		this.sixin = sixin;
	}

	public SixinService getSixinService() {
		return sixinService;
	}

	public void setSixinService(SixinService sixinService) {
		this.sixinService = sixinService;
	}

	public List<Sixin> getSixinList() {
		return sixinList;
	}

	public void setSixinList(List<Sixin> sixinList) {
		this.sixinList = sixinList;
	}

	
	
}
