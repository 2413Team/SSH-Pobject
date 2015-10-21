package com.sshpobject.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sshpobject.model.OrganizationRequest;
import com.sshpobject.model.Shuoshuo;
import com.sshpobject.model.User;
import com.sshpobject.service.OrganizationRequestService;
import com.sshpobject.service.OrganizationService;
import com.sshpobject.service.ShuoshuoService;

public class ShuoshuoAction extends ActionSupport {
	private ShuoshuoService shuoshuoService;
	private Shuoshuo shuoshuo;
	private User user;
	private List<OrganizationRequest> orList;
	private OrganizationRequestService organizationRequestService;
	private List<Shuoshuo> shuoList;
	
	public String addShuoshuo() throws Exception{
		Map session=ActionContext.getContext().getSession();
		User user=(User)session.get("user");
		shuoshuoService.addShuoshuo(shuoshuo, user);
		return SUCCESS;
	}
	
	public String getShuoshuos() throws Exception{
		orList=new ArrayList<OrganizationRequest>();
		Map session=ActionContext.getContext().getSession();
		User user=(User)session.get("user");
		shuoList=shuoshuoService.getShuoshuos(user);
		orList=organizationRequestService.haveRequest(user);
		return SUCCESS;
	}

	public ShuoshuoService getShuoshuoService() {
		return shuoshuoService;
	}

	public void setShuoshuoService(ShuoshuoService shuoshuoService) {
		this.shuoshuoService = shuoshuoService;
	}

	public Shuoshuo getShuoshuo() {
		return shuoshuo;
	}

	public void setShuoshuo(Shuoshuo shuoshuo) {
		this.shuoshuo = shuoshuo;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<Shuoshuo> getShuoList() {
		return shuoList;
	}

	public void setShuoList(List<Shuoshuo> shuoList) {
		this.shuoList = shuoList;
	}

	public List<OrganizationRequest> getOrList() {
		return orList;
	}

	public void setOrList(List<OrganizationRequest> orList) {
		this.orList = orList;
	}

	public OrganizationRequestService getOrganizationRequestService() {
		return organizationRequestService;
	}

	public void setOrganizationRequestService(
			OrganizationRequestService organizationRequestService) {
		this.organizationRequestService = organizationRequestService;
	}
	
	
	
}
