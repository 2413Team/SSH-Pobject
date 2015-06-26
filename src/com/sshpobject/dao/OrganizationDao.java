package com.sshpobject.dao;

import java.util.List;

import com.sshpobject.model.Organization;
import com.sshpobject.model.User;
import com.sshpobject.model.UserOrganization;

public interface OrganizationDao {
	public void addOrganization(Organization organization,UserOrganization  uo);
	public List<Organization> searchOrganization(String key);
	public Organization detailOrganization(int organizationid);
	public List<UserOrganization> detailOrganizationUser(int organizationid);
	public List<UserOrganization> getMyOrganization(User user);
}
