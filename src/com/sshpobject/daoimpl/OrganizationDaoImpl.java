package com.sshpobject.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.sshpobject.dao.OrganizationDao;
import com.sshpobject.model.Organization;
import com.sshpobject.model.UserOrganization;

public class OrganizationDaoImpl implements OrganizationDao {
	private SessionFactory sf;
	private Session sess;
	private Transaction tx;
	public void addOrganization(Organization organization,UserOrganization  uo){
		System.out.println("进入了dao");
		organization.setMembercount(1);
		getSession();
		sess.save(organization);
		distroy();
		getSession();
		sess.save(uo);
		distroy();
	}
	
	public List<Organization> searchOrganization(String key){
		getSession();
		String sql="FROM Organization WHERE name like '%"+key+"%'";
		Query query=sess.createQuery(sql);
		return query.list();
	}
	
	public void getSession(){
		sess=sf.openSession();
		tx=sess.beginTransaction();
	}
	//执行并销毁链接
	public void distroy(){
		tx.commit();
		sess.close();
	}
	public SessionFactory getSf() {
		return sf;
	}
	public void setSf(SessionFactory sf) {
		this.sf = sf;
	}
	
}
