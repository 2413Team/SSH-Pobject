package com.sshpobject.model;

import java.util.Date;

/**
 * UserLog entity. @author MyEclipse Persistence Tools
 */

public class UserLog implements java.io.Serializable {

	// Fields

	private Integer id;
	private String method;
	private String vaule;
	private Date date;

	// Constructors

	/** default constructor */
	public UserLog() {
	}

	/** full constructor */
	public UserLog(String method, String vaule, Date date) {
		this.method = method;
		this.vaule = vaule;
		this.date = date;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getMethod() {
		return this.method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public String getVaule() {
		return this.vaule;
	}

	public void setVaule(String vaule) {
		this.vaule = vaule;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}