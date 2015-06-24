package com.sshpobject.model;

/**
 * OrganizationRequest entity. @author MyEclipse Persistence Tools
 */

public class OrganizationRequest implements java.io.Serializable {

	// Fields

	private Integer id;
	private Organization organization;
	private Integer userid;
	private Integer agree;

	// Constructors

	/** default constructor */
	public OrganizationRequest() {
	}

	/** full constructor */
	public OrganizationRequest(Organization organization, Integer userid,
			Integer agree) {
		this.organization = organization;
		this.userid = userid;
		this.agree = agree;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Organization getOrganization() {
		return this.organization;
	}

	public void setOrganization(Organization organization) {
		this.organization = organization;
	}

	public Integer getUserid() {
		return this.userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public Integer getAgree() {
		return this.agree;
	}

	public void setAgree(Integer agree) {
		this.agree = agree;
	}

}