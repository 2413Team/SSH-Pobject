package com.sshpobject.daoimpl;

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
	
	public void getSession(){
		sess=sf.openSession();
		tx=sess.beginTransaction();
	}
	//ִ�в���������
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
