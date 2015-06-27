package com.sshpobject.model;

import java.util.Date;

/**
 * Liuyan entity. @author MyEclipse Persistence Tools
 */

public class Liuyan implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private Organization organization;
	private String value;
	private Date creatdate;

	// Constructors

	/** default constructor */
	public Liuyan() {
	}

	/** full constructor */
	public Liuyan(User user, Organization organization, String value,
			Date creatdate) {
		this.user = user;
		this.organization = organization;
		this.value = value;
		this.creatdate = creatdate;
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

	public String getValue() {
		return this.value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public Date getCreatdate() {
		return this.creatdate;
	}

	public void setCreatdate(Date creatdate) {
		this.creatdate = creatdate;
	}

}