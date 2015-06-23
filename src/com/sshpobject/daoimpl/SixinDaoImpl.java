package com.sshpobject.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.sshpobject.dao.SixinDao;
import com.sshpobject.model.Sixin;
import com.sshpobject.model.User;

public class SixinDaoImpl implements SixinDao {
	private SessionFactory sf;
	private Session sess;
	private Transaction tx;
	@Override
	public void sendSixin(Sixin sixin) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Sixin> getSixin(User user) {
		// TODO Auto-generated method stub
		return null;
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
