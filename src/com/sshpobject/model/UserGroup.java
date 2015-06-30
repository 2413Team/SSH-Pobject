package com.sshpobject.model;

import java.util.HashSet;
import java.util.Set;

/**
 * UserGroup entity. @author MyEclipse Persistence Tools
 */

public class UserGroup implements java.io.Serializable {

	// Fields

	private Integer id;
	private String value;
	private Set users = new HashSet(0);

	// Constructors

	/** default constructor */
	public UserGroup() {
	}

	/** minimal constructor */
	public UserGroup(String value) {
		this.value = value;
	}

	/** full constructor */
	public UserGroup(String value, Set users) {
		this.value = value;
		this.users = users;
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

	public Set getUsers() {
		return this.users;
	}

	public void setUsers(Set users) {
		this.users = users;
	}

}