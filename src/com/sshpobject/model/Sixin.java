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
	private String value;
	private Date creatdate;

	// Constructors

	/** default constructor */
	public Sixin() {
	}

	/** full constructor */
	public Sixin(User userByGetuserid, User userBySetuserid, String value,
			Date creatdate) {
		this.userByGetuserid = userByGetuserid;
		this.userBySetuserid = userBySetuserid;
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