package com.sshpobject.daoimpl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.sshpobject.dao.UserDao;
import com.sshpobject.model.User;
import com.sshpobject.model.UserGroup;
import com.sshpobject.model.UserStatus;

public class UserDaoImpl implements UserDao {
	private SessionFactory sf;
	private Session sess;
	private Transaction tx;
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
	public boolean doLogin(User user) {
		getSession();
		String sql="FROM User WHERE email='"+user.getEmail()+"' AND password='"+user.getPassword()+"'";
		Query query=sess.createQuery(sql);
		if(!query.list().isEmpty())
			return true;
		return false;
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
