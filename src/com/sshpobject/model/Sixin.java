package com.sshpobject.model;

import java.util.Date;

/**
 * Sixin entity. @author MyEclipse Persistence Tools
 */

public class Sixin implements java.io.Serializable {

	// Fields

	private Integer id;
	private User userByGetuserid;
	private User userBySetuserid;
	private String values;
	private Date creatdate;

	// Constructors

	/** default constructor */
	public Sixin() {
	}

	/** full constructor */
	public Sixin(User userByGetuserid, User userBySetuserid, String values,
			Date creatdate) {
		this.userByGetuserid = userByGetuserid;
		this.userBySetuserid = userBySetuserid;
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

	public User getUserByGetuserid() {
		return this.userByGetuserid;
	}

	public void setUserByGetuserid(User userByGetuserid) {
		this.userByGetuserid = userByGetuserid;
	}

	public User getUserBySetuserid() {
		return this.userBySetuserid;
	}

	public void setUserBySetuserid(User userBySetuserid) {
		this.userBySetuserid = userBySetuserid;
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