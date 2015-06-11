package com.sshpobject.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer id;
	private UserGroup userGroup;
	private UserStatus userStatus;
	private String email;
	private String password;
	private String name;
	private String sex;
	private Date birthday;
	private String address;
	private String phone;
	private Set userOrganizations = new HashSet(0);
	private Set sixinsForSetuserid = new HashSet(0);
	private Set liuyans = new HashSet(0);
	private Set sixinsForGetuserid = new HashSet(0);
	private Set organizations = new HashSet(0);
	private Set shuoshuos = new HashSet(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(UserGroup userGroup, UserStatus userStatus, String email,
			String password, String name, String sex, Date birthday,
			String address, String phone) {
		this.userGroup = userGroup;
		this.userStatus = userStatus;
		this.email = email;
		this.password = password;
		this.name = name;
		this.sex = sex;
		this.birthday = birthday;
		this.address = address;
		this.phone = phone;
	}

	/** full constructor */
	public User(UserGroup userGroup, UserStatus userStatus, String email,
			String password, String name, String sex, Date birthday,
			String address, String phone, Set userOrganizations,
			Set sixinsForSetuserid, Set liuyans, Set sixinsForGetuserid,
			Set organizations, Set shuoshuos) {
		this.userGroup = userGroup;
		this.userStatus = userStatus;
		this.email = email;
		this.password = password;
		this.name = name;
		this.sex = sex;
		this.birthday = birthday;
		this.address = address;
		this.phone = phone;
		this.userOrganizations = userOrganizations;
		this.sixinsForSetuserid = sixinsForSetuserid;
		this.liuyans = liuyans;
		this.sixinsForGetuserid = sixinsForGetuserid;
		this.organizations = organizations;
		this.shuoshuos = shuoshuos;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public UserGroup getUserGroup() {
		return this.userGroup;
	}

	public void setUserGroup(UserGroup userGroup) {
		this.userGroup = userGroup;
	}

	public UserStatus getUserStatus() {
		return this.userStatus;
	}

	public void setUserStatus(UserStatus userStatus) {
		this.userStatus = userStatus;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Set getUserOrganizations() {
		return this.userOrganizations;
	}

	public void setUserOrganizations(Set userOrganizations) {
		this.userOrganizations = userOrganizations;
	}

	public Set getSixinsForSetuserid() {
		return this.sixinsForSetuserid;
	}

	public void setSixinsForSetuserid(Set sixinsForSetuserid) {
		this.sixinsForSetuserid = sixinsForSetuserid;
	}

	public Set getLiuyans() {
		return this.liuyans;
	}

	public void setLiuyans(Set liuyans) {
		this.liuyans = liuyans;
	}

	public Set getSixinsForGetuserid() {
		return this.sixinsForGetuserid;
	}

	public void setSixinsForGetuserid(Set sixinsForGetuserid) {
		this.sixinsForGetuserid = sixinsForGetuserid;
	}

	public Set getOrganizations() {
		return this.organizations;
	}

	public void setOrganizations(Set organizations) {
		this.organizations = organizations;
	}

	public Set getShuoshuos() {
		return this.shuoshuos;
	}

	public void setShuoshuos(Set shuoshuos) {
		this.shuoshuos = shuoshuos;
	}

}