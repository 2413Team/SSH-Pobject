package com.sshpobject.model;

import java.util.Date;

/**
 * Shuoshuo entity. @author MyEclipse Persistence Tools
 */

public class Shuoshuo implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private String value;
	private Date creatdate;

	// Constructors

	/** default constructor */
	public Shuoshuo() {
	}

	/** full constructor */
	public Shuoshuo(User user, String value, Date creatdate) {
		this.user = user;
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