package com.sshpobject.action;

import com.opensymphony.xwork2.ActionSupport;
import com.sshpobject.model.Sixin;
import com.sshpobject.service.SixinService;

public class SixinAction extends ActionSupport {
	private Sixin sixin;
	private SixinService dao;
	
	public String sendSixin() throws Exception{
		System.out.println("������ID��"+sixin.getUserByGetuserid().getId()+"���ݣ�"+sixin.getValues());
		return SUCCESS;
	}

	public Sixin getSixin() {
		return sixin;
	}

	public void setSixin(Sixin sixin) {
		this.sixin = sixin;
	}

	public SixinService getDao() {
		return dao;
	}

	public void setDao(SixinService dao) {
		this.dao = dao;
	}
	
	
	
	
}
