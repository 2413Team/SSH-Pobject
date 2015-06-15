package com.sshpobject.action;

import com.opensymphony.xwork2.ActionSupport;
import com.sshpobject.model.Organization;
import com.sshpobject.service.OrganizationService;

public class OrganizationAction extends ActionSupport {
	private OrganizationService organizationService;
	private Organization organization;
	public void addOrganization(Organization organization){
		
	}
	public OrganizationService getOrganizationService() {
		return organizationService;
	}

	public void setOrganizationService(OrganizationService organizationService) {
		this.organizationService = organizationService;
	}
	public Organization getOrganization() {
		return organization;
	}
	public void setOrganization(Organization organization) {
		this.organization = organization;
	}
	
}
