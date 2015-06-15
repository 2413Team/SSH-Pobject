package com.sshpobject.service;

import com.sshpobject.daoimpl.OrganizationDaoImpl;
import com.sshpobject.model.Organization;

public class OrganizationService {
	private OrganizationDaoImpl organizationDao;
	public void addOrganization(Organization organization){
		
	}
	public OrganizationDaoImpl getOrganizationDao() {
		return organizationDao;
	}
	public void setOrganizationDao(OrganizationDaoImpl organizationDao) {
		this.organizationDao = organizationDao;
	}
	
}
