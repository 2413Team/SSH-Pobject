package com.sshpobject.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.sshpobject.dao.UserDao;
import com.sshpobject.model.User;
import com.sshpobject.model.UserGroup;
import com.sshpobject.model.UserOrganization;
import com.sshpobject.model.UserStatus;

public class UserDaoImpl implements UserDao {
	private SessionFactory sf;
	private Session sess;
	private Transaction tx;
	private OrganizationDaoImpl organizationDao;
	@Override
	public void doRegister(User user) {
		getSession();
		UserGroup ug=new UserGroup();
		UserStatus us=new UserStatus();
		ug.setId(1);
		us.setId(1);
		user.setUserGroup(ug);
		user.setUserStatus(us);
		sess.save(user);
		distroy();
	}

	@Override
	public List<User> doLogin(User user) {
		getSession();
		String sql="FROM User WHERE email='"+user.getEmail()+"' AND password='"+user.getPassword()+"' AND userStatus.id=1";
		Query query=sess.createQuery(sql);
		List<User> userlist=query.list();
		distroy();
		return userlist;
	}
	
	@Override
	public List<UserOrganization> detailUser(User user) {
		getSession();
		List<UserOrganization> list=new ArrayList<UserOrganization>();
		String sql="FROM UserOrganization WHERE user.id="+user.getId();
		Query query=sess.createQuery(sql);
		list=query.list();
		for(int i=0;i<list.size();i++){
			String test=list.get(i).getOrganization().getName();
			test=list.get(i).getUser().getName();
		}
		return list;
	}

	@Override
	public List<User> detailMe(User user) {
		getSession();
		String sql="FROM User WHERE id="+user.getId();
		Query query=sess.createQuery(sql);
		return query.list();
	}

	@Override
	public List<User> searchUser(String key) {
		getSession();
		String sql="FROM User WHERE email like '%"+key+"%'";
		Query query=sess.createQuery(sql);
		return query.list();
	}
	
	@Override
	public List<UserGroup> searchUserGroup(String key) {
		getSession();
		String sql;
		if(key.equals(""))
			sql="FROM UserGroup";
		else
			sql="FROM UserGroup WHERE values like '%"+key+"%'";
		Query query=sess.createQuery(sql);
		List<UserGroup> list=query.list();
		for(int i=0;i<list.size();i++){
			String test=list.get(i).getValue();
		}
		distroy();
		return list;
	}
	//删除用户
	@Override
	public void deleteUser(User user) {
		deleteOrganization(user);
		getSession();
		deleteShuoshuo(user);
		deleteSixin(user);
		deleteEntity(user);
		distroy();
	}
	
	private void  deleteShuoshuo(User user){
		String sql="DELETE Shuoshuo WHERE user.id="+user.getId();
		Query query=sess.createQuery(sql);
		query.executeUpdate();
	}
	
	private void deleteSixin(User user){
		String sql="DELETE Sixin WHERE userByGetuserid.id="+user.getId()+" OR userBySetuserid.id="+user.getId();
		Query query=sess.createQuery(sql);
		query.executeUpdate();
	}
	
	private void deleteEntity(User user){
		String sql="DELETE User WHERE id="+user.getId();
		Query query=sess.createQuery(sql);
		query.executeUpdate();
	}
	
	private void deleteOrganization(User user){
		List<UserOrganization> list=organizationDao.getMyOrganization(user);
		for(int i=0;i<list.size();i++){
			organizationDao.quitOrganization(list.get(i).getOrganization(), user);
		}
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

	public OrganizationDaoImpl getOrganizationDao() {
		return organizationDao;
	}

	public void setOrganizationDao(OrganizationDaoImpl organizationDao) {
		this.organizationDao = organizationDao;
	}
	
	

	
}
