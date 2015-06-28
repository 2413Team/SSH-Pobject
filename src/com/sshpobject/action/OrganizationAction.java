package com.sshpobject.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

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
	private List<Organization> organizationList;
	private List<UserOrganization> userList;
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
	
	public String searchOrganization() throws Exception{
		organizationList=organizationService.searchOrganization(organization.getName());
		return SUCCESS;
	}

	public String detailOrganization() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		int organizationid=Integer.parseInt(request.getParameter("organizationid"));
		organization=organizationService.detailOrganization(organizationid);
		userList=organizationService.detailOrganizationUser(organizationid);
		return SUCCESS;
	}
	
	public String getMyOrganization() throws Exception{
		Map session=ActionContext.getContext().getSession();
		User user=(User)session.get("user");
		organizationList=new ArrayList<Organization>();
		userList=organizationService.getMyOrganization(user);
		if(userList.size()!=0)
			return SUCCESS;
		else
			return "no";
	}
	
	public String quitOrganization() throws Exception{
		Map session=ActionContext.getContext().getSession();
		User user=(User)session.get("user");
		HttpServletRequest request = ServletActionContext.getRequest();
		int organizationid=Integer.parseInt(request.getParameter("organizationid"));
		organization=new Organization();
		organization.setId(organizationid);
		organizationService.quitOrganization(organization, user);
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

	public List<Organization> getOrganizationList() {
		return organizationList;
	}

	public void setOrganizationList(List<Organization> organizationList) {
		this.organizationList = organizationList;
	}

	public List<UserOrganization> getUserList() {
		return userList;
	}

	public void setUserList(List<UserOrganization> userList) {
		this.userList = userList;
	}
	
}
