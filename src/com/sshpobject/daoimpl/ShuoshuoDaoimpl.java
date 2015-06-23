package com.sshpobject.daoimpl;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.sshpobject.dao.ShuoshuoDao;
import com.sshpobject.model.Shuoshuo;
import com.sshpobject.model.User;

public class ShuoshuoDaoimpl implements ShuoshuoDao {

	private SessionFactory sf;
	private Session sess;
	private Transaction tx;
	@Override
	public void addShuoshuo(Shuoshuo shuoshuo, User user) {
		// TODO Auto-generated method stub
		Date date=null;
		DateFormat fmt =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		String strDate=fmt.format(new Date());
		try {
			date = fmt.parse(strDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		shuoshuo.setCreatdate(date);
		shuoshuo.setUser(user);
		getSession();
		sess.save(shuoshuo);
		distroy();
	}

	@Override
	public List<Shuoshuo> getAllShuoshuo(User user) {
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
