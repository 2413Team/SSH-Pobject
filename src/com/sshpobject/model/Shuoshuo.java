package com.sshpobject.model;

import java.util.Date;

/**
 * Shuoshuo entity. @author MyEclipse Persistence Tools
 */

public class Shuoshuo implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private String values;
	private Date creatdate;

	// Constructors

	/** default constructor */
	public Shuoshuo() {
	}

	/** full constructor */
	public Shuoshuo(User user, String values, Date creatdate) {
		this.user = user;
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