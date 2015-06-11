package com.sshpobject.model;

/**
 * OrganizationRequest entity. @author MyEclipse Persistence Tools
 */

public class OrganizationRequest implements java.io.Serializable {

	// Fields

	private Integer id;
	private Organization organization;
	private String value;

	// Constructors

	/** default constructor */
	public OrganizationRequest() {
	}

	/** full constructor */
	public OrganizationRequest(Organization organization, String value) {
		this.organization = organization;
		this.value = value;
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

	public String getValue() {
		return this.value;
	}

	public void setValue(String value) {
		this.value = value;
	}

}