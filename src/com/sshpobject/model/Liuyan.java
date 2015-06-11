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
	private String values;
	private Date creatdate;

	// Constructors

	/** default constructor */
	public Liuyan() {
	}

	/** full constructor */
	public Liuyan(User user, Organization organization, String values,
			Date creatdate) {
		this.user = user;
		this.organization = organization;
		this.values = values;
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

	public String getValues() {
		return this.values;
	}

	public void setValues(String values) {
		this.values = values;
	}

	public Date getCreatdate() {
		return this.creatdate;
	}

	public void setCreatdate(Date creatdate) {
		this.creatdate = creatdate;
	}

}