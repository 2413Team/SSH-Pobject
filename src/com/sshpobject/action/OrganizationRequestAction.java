package com.sshpobject.action;

import com.opensymphony.xwork2.ActionSupport;
import com.sshpobject.service.OrganizationRequestService;

public class OrganizationRequestAction extends ActionSupport {
	private OrganizationRequestService dao;

	public OrganizationRequestService getDao() {
		return dao;
	}

	public void setDao(OrganizationRequestService dao) {
		this.dao = dao;
	}
	
	
}
