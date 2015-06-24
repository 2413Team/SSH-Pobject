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
		List<Organization> list=query.list();
		for(int i=0;i<list.size();i++){
			String test=list.get(i).getOrganizationType().getValue();
			test=list.get(i).getUser().getName();
		}
		sess.close();
		return list;
	}
		
	@Override
	public Organization detailOrganization(int organizationid) {
		getSession();
		String sql="FROM Organization WHERE id ="+organizationid;
		Query query=sess.createQuery(sql);
		Organization organization=(Organization)query.list().get(0);
		distroy();
		return organization;
	}
	
	@Override
	public List<UserOrganization> detailOrganizationUser(int organizationid) {
		getSession();
		String sql="FROM UserOrganization WHERE organization.id="+organizationid;
		Query query=sess.createQuery(sql);
		List<UserOrganization> list=query.list();
		distroy();
		return list;
	}

	public void getSession(){
		sess=sf.openSession();
		tx=sess.beginTransaction();
	}
	//执行并销毁链接
	public void distroy(){
		tx.commit();
		sess.close();
		sf.close();
	}
	public SessionFactory getSf() {
		return sf;
	}
	public void setSf(SessionFactory sf) {
		this.sf = sf;
	}
	
}
