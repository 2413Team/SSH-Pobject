package com.sshpobject.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.sshpobject.dao.OrganizationDao;
import com.sshpobject.model.Organization;
import com.sshpobject.model.OrganizationRequest;
import com.sshpobject.model.User;
import com.sshpobject.model.UserOrganization;

public class OrganizationDaoImpl implements OrganizationDao {
	private SessionFactory sf;
	private Session sess;
	private Transaction tx;
	public void addOrganization(Organization organization,UserOrganization  uo){
		organization.setMembercount(1);
		getSession();
		sess.save(organization);
		distroy();
		getSession();
		sess.save(uo);
		distroy();
	}
	
	@Override
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
		for(int i=0;i<list.size();i++){
			String test=list.get(i).getUser().getName();
		}
		distroy();
		return list;
	}
	
	@Override
	public List<UserOrganization> getMyOrganization(User user){
		List<UserOrganization> list=new ArrayList<UserOrganization>();
		String test;
		getSession();
		String sql="FROM UserOrganization WHERE user.id="+user.getId();
		Query query=sess.createQuery(sql);
		list=query.list();
		List<UserOrganization> newList=new ArrayList<UserOrganization>();
		for(int i=0;i<list.size();i++){
			test=list.get(i).getUser().getName();
			test=list.get(i).getOrganization().getName();
		}
		newList.addAll(list);
		List<Organization> organizationList=new ArrayList<Organization>();
		for(int i=0;i<newList.size();i++){
			sql="FROM Organization WHERE id ="+newList.get(i).getOrganization().getId();
			query=sess.createQuery(sql);
			organizationList.addAll(query.list());
			test=organizationList.get(i).getUser().getName();
		}
		distroy();
		for(int i=0;i<newList.size();i++){
			newList.get(i).setUser(organizationList.get(i).getUser());
		}
		return newList;
	}	

	@Override
	public void quitOrganization(Organization organization, User user) {
		getSession();
		if(isCreater(organization, user))
			deleteAll(organization);
		else
			justQuit(organization, user);
		distroy();
	}
	
	private boolean isCreater(Organization organization,User user){
		List<Organization> myOrganization=new ArrayList<Organization>();
		String sql="FROM Organization WHERE id="+organization.getId()+" AND user.id="+user.getId();
		Query query=sess.createQuery(sql);
		myOrganization=query.list();
		if(myOrganization.size()>0)
			return true;
		else
			return false;
	}
	
	private void deleteAll(Organization organization){
		String sql="DELETE UserOrganization WHERE organization.id="+organization.getId();
		Query query=sess.createQuery(sql);
		query.executeUpdate();
		sql="DELETE Liuyan WHERE organization.id="+organization.getId();
		query=sess.createQuery(sql);
		query.executeUpdate();
		sql="DELETE OrganizationRequest WHERE organization.id="+organization.getId();
		query=sess.createQuery(sql);
		query.executeUpdate();
		sql="DELETE Organization WHERE id="+organization.getId();
		query=sess.createQuery(sql);
		query.executeUpdate();
	}
	
	private void justQuit(Organization organization,User user){
		String sql="DELETE UserOrganization WHERE organization.id="+organization.getId()+" AND user.id="+user.getId();
		Query query=sess.createQuery(sql);
		query.executeUpdate();
		sql="DELETE Liuyan WHERE organization.id="+organization.getId()+" AND user.id="+user.getId();
		query=sess.createQuery(sql);
		query.executeUpdate();
		sql="DELETE OrganizationRequest WHERE organization.id="+organization.getId()+" AND user.id="+user.getId();
		query=sess.createQuery(sql);
		query.executeUpdate();
		outMembercount(organization);
	}
	private  void outMembercount(Organization organization){
		String sql="UPDATE Organization SET membercount=membercount-1 WHERE id="+organization.getId();
		Query query=sess.createQuery(sql);
		query.executeUpdate();
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
