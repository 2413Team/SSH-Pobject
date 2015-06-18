package com.sshpobject.dao;

import com.sshpobject.model.Organization;
import com.sshpobject.model.UserOrganization;

public interface OrganizationDao {
	public void addOrganization(Organization organization,UserOrganization  uo);
	
}
