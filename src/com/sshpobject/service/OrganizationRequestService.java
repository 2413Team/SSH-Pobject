package com.sshpobject.service;

import java.util.List;

import com.sshpobject.daoimpl.OrganizationRequestDaoImpl;
import com.sshpobject.model.OrganizationRequest;
import com.sshpobject.model.User;

public class OrganizationRequestService {
	private OrganizationRequestDaoImpl organizationRequestDao;
	public void sendRequest(OrganizationRequest organizationRequest){
		organizationRequestDao.sendRequest(organizationRequest);
	}
	
	public List<OrganizationRequest> haveRequest(User user){
		return organizationRequestDao.haveRequest(user);
	}
	
	public void agreeRequest(OrganizationRequest organizationRequest){
		organizationRequestDao.agreeRequest(organizationRequest);
	}

	public OrganizationRequestDaoImpl getOrganizationRequestDao() {
		return organizationRequestDao;
	}

	public void setOrganizationRequestDao(
			OrganizationRequestDaoImpl organizationRequestDao) {
		this.organizationRequestDao = organizationRequestDao;
	}
	
	
}
