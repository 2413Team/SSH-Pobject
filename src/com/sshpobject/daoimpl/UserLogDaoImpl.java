package com.sshpobject.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.sshpobject.dao.UserLogDao;
import com.sshpobject.model.UserLog;

public class UserLogDaoImpl implements UserLogDao {
	private SessionFactory sf;
	private Session sess;
	private Transaction tx;
	
	@Override
	public void addLog(UserLog log) {
		getSession();
		sess.save(log);
		distroy();
	}
	
	@Override
	public List<UserLog> getLog() {
		getSession();
		String sql="FROM UserLog";
		Query query=sess.createQuery(sql);
		List<UserLog> loglist=query.list();
		sess.close();
		return  loglist;
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
