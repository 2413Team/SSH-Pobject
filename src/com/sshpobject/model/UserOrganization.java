package com.sshpobject.model;

/**
 * UserOrganization entity. @author MyEclipse Persistence Tools
 */

public class UserOrganization implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private Organization organization;
	private Integer isadmin;

	// Constructors

	/** default constructor */
	public UserOrganization() {
	}

	/** full constructor */
	public UserOrganization(User user, Organization organization,
			Integer isadmin) {
		this.user = user;
		this.organization = organization;
		this.isadmin = isadmin;
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

	public Integer getIsadmin() {
		return this.isadmin;
	}

	public void setIsadmin(Integer isadmin) {
		this.isadmin = isadmin;
	}

}