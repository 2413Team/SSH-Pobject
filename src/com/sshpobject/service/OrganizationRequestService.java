package com.sshpobject.service;

import java.util.List;

import com.sshpobject.daoimpl.OrganizationRequestDaoImpl;
import com.sshpobject.model.OrganizationRequest;
import com.sshpobject.model.User;

public class OrganizationRequestService {
	private OrganizationRequestDaoImpl dao;
	public void sendRequest(OrganizationRequest organizationRequest){
		dao.sendRequest(organizationRequest);
	}
	
	public List<OrganizationRequest> haveRequest(User user){
		return dao.haveRequest(user);
	}

	public OrganizationRequestDaoImpl getDao() {
		return dao;
	}

	public void setDao(OrganizationRequestDaoImpl dao) {
		this.dao = dao;
	}
	
}
