package com.sshpobject.model;

import java.util.HashSet;
import java.util.Set;

/**
 * UserStatus entity. @author MyEclipse Persistence Tools
 */

public class UserStatus implements java.io.Serializable {

	// Fields

	private Integer id;
	private String values;
	private Set users = new HashSet(0);

	// Constructors

	/** default constructor */
	public UserStatus() {
	}

	/** minimal constructor */
	public UserStatus(String values) {
		this.values = values;
	}

	/** full constructor */
	public UserStatus(String values, Set users) {
		this.values = values;
		this.users = users;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getValues() {
		return this.values;
	}

	public void setValues(String values) {
		this.values = values;
	}

	public Set getUsers() {
		return this.users;
	}

	public void setUsers(Set users) {
		this.users = users;
	}

}