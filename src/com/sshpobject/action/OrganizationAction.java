package com.sshpobject.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sshpobject.model.Organization;
import com.sshpobject.model.OrganizationType;
import com.sshpobject.model.User;
import com.sshpobject.service.OrganizationService;

public class OrganizationAction extends ActionSupport {
	private OrganizationService organizationService;
	private Organization organization;
	private int typeid;
	
	public String addOrganization() throws Exception{
		System.out.println("进入了");
		Map session=ActionContext.getContext().getSession();
		System.out.println("进入了2");
		User user=(User)session.get("user");
		System.out.println("进入了3");
		organization.setUser(user);
		System.out.println("进入了4");
		OrganizationType type=new OrganizationType();
		System.out.println("进入了5");
		type.setId(typeid);
		System.out.println("进入了6");
		organization.setOrganizationType(type);
		System.out.println("进入了7");
		System.out.println(organization.getName());
		organizationService.addOrganization(organization);
		return SUCCESS;
	}
	
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("进入了action");
		return SUCCESS;
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
	public int getTypeid() {
		return typeid;
	}
	public void setTypeid(int typeid) {
		this.typeid = typeid;
	}
	
}
