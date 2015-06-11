package com.sshpobject.model;

import java.util.HashSet;
import java.util.Set;

/**
 * OrganizationType entity. @author MyEclipse Persistence Tools
 */

public class OrganizationType implements java.io.Serializable {

	// Fields

	private Integer id;
	private String value;
	private Set organizations = new HashSet(0);

	// Constructors

	/** default constructor */
	public OrganizationType() {
	}

	/** minimal constructor */
	public OrganizationType(String value) {
		this.value = value;
	}

	/** full constructor */
	public OrganizationType(String value, Set organizations) {
		this.value = value;
		this.organizations = organizations;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getValue() {
		return this.value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public Set getOrganizations() {
		return this.organizations;
	}

	public void setOrganizations(Set organizations) {
		this.organizations = organizations;
	}

}