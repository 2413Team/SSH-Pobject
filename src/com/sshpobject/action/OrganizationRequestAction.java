package com.sshpobject.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sshpobject.model.Organization;
import com.sshpobject.model.OrganizationRequest;
import com.sshpobject.model.User;
import com.sshpobject.service.OrganizationRequestService;

public class OrganizationRequestAction extends ActionSupport {
	private OrganizationRequestService organizationRequestService;
	private OrganizationRequest or;
	private List<OrganizationRequest> orList;
	
	public String sendRequest() throws Exception{
		Map session=ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		User user=(User)session.get("user");
		Organization organization=new Organization();
		int organizationId=Integer.parseInt(request.getParameter("organziationid"));
		organization.setId(organizationId);
		or=new OrganizationRequest();
		or.setOrganization(organization);
		or.setUser(user);
		System.out.println(organizationRequestService.toString());
		organizationRequestService.sendRequest(or);
		return SUCCESS;
	}
	
	public String haveRequest() throws Exception{
		Map session=ActionContext.getContext().getSession();
		User user=(User)session.get("user");
		orList=organizationRequestService.haveRequest(user);
		return SUCCESS;
	}

	public OrganizationRequestService getOrganizationRequestService() {
		return organizationRequestService;
	}

	public void setOrganizationRequestService(
			OrganizationRequestService organizationRequestService) {
		this.organizationRequestService = organizationRequestService;
	}

	public List<OrganizationRequest> getOrList() {
		return orList;
	}

	public void setOrList(List<OrganizationRequest> orList) {
		this.orList = orList;
	}

	
}
