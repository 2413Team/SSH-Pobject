package com.sshpobject.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sshpobject.model.Liuyan;
import com.sshpobject.model.Organization;
import com.sshpobject.model.User;
import com.sshpobject.service.LiuyanService;

public class LiuyanAction extends ActionSupport {
	private LiuyanService liuyanService;
	private Liuyan liuyan;
	private List<Liuyan> liuyanList;
	
	public String addLiuyan () throws Exception{
		Map session=ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		User user=(User)session.get("user");
		Organization organization=new Organization();
		organization=(Organization)session.get("organization");
		liuyan.setOrganization(organization);
		liuyanService.addLiuyan(liuyan, user);
		return SUCCESS;
	}
	
	public String getAllLiuyan() throws Exception{
		HttpServletRequest request = ServletActionContext.getRequest();
		Map session=ActionContext.getContext().getSession();
		Organization organization=new Organization();
		if(request.getParameter("organizationid")!=null){
			organization.setId(Integer.parseInt(request.getParameter("organizationid")));
			session.put("organization", organization);
		}
		else
			organization=(Organization)session.get("organization");
		liuyanList=liuyanService.getAllLiuyan(organization);
		if(liuyanList.size()>0)
			session.put("organization", liuyanList.get(0).getOrganization());
		return SUCCESS;
	}
	
	public LiuyanService getLiuyanService() {
		return liuyanService;
	}
	
	public void setLiuyanService(LiuyanService liuyanService) {
		this.liuyanService = liuyanService;
	}
	
	public List<Liuyan> getLiuyanList() {
		return liuyanList;
	}

	public void setLiuyanList(List<Liuyan> liuyanList) {
		this.liuyanList = liuyanList;
	}

	public Liuyan getLiuyan() {
		return liuyan;
	}

	public void setLiuyan(Liuyan liuyan) {
		this.liuyan = liuyan;
	}	
	
	
}
