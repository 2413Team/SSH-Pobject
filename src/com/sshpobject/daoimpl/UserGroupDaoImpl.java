package com.sshpobject.daoimpl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.sshpobject.dao.UserGroupDao;
import com.sshpobject.model.UserGroup;

public class UserGroupDaoImpl implements UserGroupDao {
	private SessionFactory sf;
	private Session sess;
	private Transaction tx;
	
	@Override
	public void addGroup(UserGroup userGroup) {
		getSessions();
		sess.save(userGroup);
		distroy();
	}

	@Override
	public void deleteGroup(String groupId) {
		getSessions();
		String sql="DELETE UserGroup WHERE id="+groupId;
		Query query=sess.createQuery(sql);
		query.executeUpdate();
		distroy();
	}
	
	public void getSessions(){
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
