package com.sshpobject.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.sshpobject.daoimpl.OrganizationDaoImpl;
import com.sshpobject.model.Organization;
import com.sshpobject.model.User;
import com.sshpobject.model.UserOrganization;

public class OrganizationService {
	private OrganizationDaoImpl organizationDao;
	public void addOrganization(Organization organization,UserOrganization  uo){
		try {
		DateFormat fmt =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		String strDate=fmt.format(new Date());
			Date date = fmt.parse(strDate);
			organization.setCreatdate(date);
			organizationDao.addOrganization(organization,uo);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public List<Organization> searchOrganization(String key){
		return organizationDao.searchOrganization(key);
	}
	
	public Organization detailOrganization(int organizationid){
		return organizationDao.detailOrganization(organizationid);
	}
	
	public List<UserOrganization> detailOrganizationUser(int organizationid){
		return organizationDao.detailOrganizationUser(organizationid);
	}
	
	public List<UserOrganization> getMyOrganization(User user){
		return organizationDao.getMyOrganization(user);
	}
	
	public void quitOrganization(Organization organization,User user){
		organizationDao.quitOrganization(organization, user);
	}
	
	public OrganizationDaoImpl getOrganizationDao() {
		return organizationDao;
	}
	
	public void setOrganizationDao(OrganizationDaoImpl organizationDao) {
		this.organizationDao = organizationDao;
	}
	
}
