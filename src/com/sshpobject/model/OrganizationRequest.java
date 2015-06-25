package com.sshpobject.model;

/**
 * OrganizationRequest entity. @author MyEclipse Persistence Tools
 */

public class OrganizationRequest implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private Organization organization;
	private Integer agree;

	// Constructors

	/** default constructor */
	public OrganizationRequest() {
	}

	/** full constructor */
	public OrganizationRequest(User user, Organization organization,
			Integer agree) {
		this.user = user;
		this.organization = organization;
		this.agree = agree;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Organization getOrganization() {
		return this.organization;
	}

	public void setOrganization(Organization organization) {
		this.organization = organization;
	}

	public Integer getAgree() {
		return this.agree;
	}

	public void setAgree(Integer agree) {
		this.agree = agree;
	}

}