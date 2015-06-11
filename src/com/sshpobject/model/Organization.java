package com.sshpobject.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Organization entity. @author MyEclipse Persistence Tools
 */

public class Organization implements java.io.Serializable {

	// Fields

	private Integer id;
	private OrganizationType organizationType;
	private User user;
	private String name;
	private Integer membercount;
	private Date creatdate;
	private Set userOrganizations = new HashSet(0);
	private Set liuyans = new HashSet(0);
	private Set organizationRequests = new HashSet(0);

	// Constructors

	/** default constructor */
	public Organization() {
	}

	/** minimal constructor */
	public Organization(OrganizationType organizationType, User user,
			String name, Integer membercount, Date creatdate) {
		this.organizationType = organizationType;
		this.user = user;
		this.name = name;
		this.membercount = membercount;
		this.creatdate = creatdate;
	}

	/** full constructor */
	public Organization(OrganizationType organizationType, User user,
			String name, Integer membercount, Date creatdate,
			Set userOrganizations, Set liuyans, Set organizationRequests) {
		this.organizationType = organizationType;
		this.user = user;
		this.name = name;
		this.membercount = membercount;
		this.creatdate = creatdate;
		this.userOrganizations = userOrganizations;
		this.liuyans = liuyans;
		this.organizationRequests = organizationRequests;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public OrganizationType getOrganizationType() {
		return this.organizationType;
	}

	public void setOrganizationType(OrganizationType organizationType) {
		this.organizationType = organizationType;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getMembercount() {
		return this.membercount;
	}

	public void setMembercount(Integer membercount) {
		this.membercount = membercount;
	}

	public Date getCreatdate() {
		return this.creatdate;
	}

	public void setCreatdate(Date creatdate) {
		this.creatdate = creatdate;
	}

	public Set getUserOrganizations() {
		return this.userOrganizations;
	}

	public void setUserOrganizations(Set userOrganizations) {
		this.userOrganizations = userOrganizations;
	}

	public Set getLiuyans() {
		return this.liuyans;
	}

	public void setLiuyans(Set liuyans) {
		this.liuyans = liuyans;
	}

	public Set getOrganizationRequests() {
		return this.organizationRequests;
	}

	public void setOrganizationRequests(Set organizationRequests) {
		this.organizationRequests = organizationRequests;
	}

}