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
import com.sshpobject.service.OrganizationService;

public class OrganizationRequestAction extends ActionSupport {
	private OrganizationRequestService organizationRequestService;
	private OrganizationRequest or;
	private List<OrganizationRequest> orList;
	private OrganizationService organizationService;
	
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
	
	public String agreeRequest() throws Exception{
		HttpServletRequest request = ServletActionContext.getRequest();
		Organization organization=new Organization();
		System.out.println(Integer.parseInt(request.getParameter("organizationid")));
		organization=organizationService.detailOrganization(Integer.parseInt(request.getParameter("organizationid")));
		User user=new User();
		user.setId(Integer.parseInt(request.getParameter("userid")));
		System.out.println("组织名:"+organization.getName());
		or=new OrganizationRequest();
		or.setId(Integer.parseInt(request.getParameter("orid")));
		or.setOrganization(organization);
		or.setUser(user);
		organizationRequestService.agreeRequest(or);
		return SUCCESS;
	}
	
	public String disagreeRequest() throws Exception{
		HttpServletRequest request = ServletActionContext.getRequest();
		Organization organization=new Organization();
		System.out.println(Integer.parseInt(request.getParameter("organizationid")));
		organization=organizationService.detailOrganization(Integer.parseInt(request.getParameter("organizationid")));
		User user=new User();
		user.setId(Integer.parseInt(request.getParameter("userid")));
		System.out.println("组织名:"+organization.getName());
		or=new OrganizationRequest();
		or.setId(Integer.parseInt(request.getParameter("orid")));
		or.setOrganization(organization);
		or.setUser(user);
		organizationRequestService.disagreeRequest(or);
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

	public OrganizationService getOrganizationService() {
		return organizationService;
	}

	public void setOrganizationService(OrganizationService organizationService) {
		this.organizationService = organizationService;
	}

	
	
}
