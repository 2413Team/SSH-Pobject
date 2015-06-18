package com.sshpobject.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.sshpobject.daoimpl.OrganizationDaoImpl;
import com.sshpobject.model.Organization;
import com.sshpobject.model.UserOrganization;

public class OrganizationService {
	private OrganizationDaoImpl organizationDao;
	public void addOrganization(Organization organization,UserOrganization  uo){
		System.out.println("Ω¯»Î¡Àservice");
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
	public void test(){
		System.out.println("test");
	}
	public OrganizationDaoImpl getOrganizationDao() {
		return organizationDao;
	}
	public void setOrganizationDao(OrganizationDaoImpl organizationDao) {
		this.organizationDao = organizationDao;
	}
	
}
