package com.sshpobject.dao;

import com.sshpobject.model.Organization;
import com.sshpobject.model.User;

public interface OrganizationRequestDao {
	public void sendRequest(Organization organziation);
	public void haveRequest(User user);
}
