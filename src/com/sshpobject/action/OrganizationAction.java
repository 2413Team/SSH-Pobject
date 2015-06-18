package com.sshpobject.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sshpobject.model.Organization;
import com.sshpobject.model.OrganizationType;
import com.sshpobject.model.User;
import com.sshpobject.model.UserOrganization;
import com.sshpobject.service.OrganizationService;

public class OrganizationAction extends ActionSupport {
	private OrganizationService organizationService;
	private Organization organization;
	private int typeid;
	
	public String addOrganization() throws Exception{
		Map session=ActionContext.getContext().getSession();
		User user=(User)session.get("user");
		organization.setUser(user);
		OrganizationType type=new OrganizationType();
		type.setId(typeid);
		organization.setOrganizationType(type);
		UserOrganization uo=new UserOrganization();
		uo.setIsadmin(1);
		uo.setOrganization(organization);
		uo.setUser(user);
		organizationService.addOrganization(organization,uo);
		return SUCCESS;
	}
	
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("Ω¯»Î¡Àaction");
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
