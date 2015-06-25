package com.sshpobject.dao;

import java.util.List;

import com.sshpobject.model.OrganizationRequest;
import com.sshpobject.model.User;

public interface OrganizationRequestDao {
	public void sendRequest(OrganizationRequest organizationRequest);
	public List<OrganizationRequest> haveRequest(User user);
	public void agreeRequest(OrganizationRequest organizationRequest);
	public void disagreeRequest(OrganizationRequest organizationRequest);
}
