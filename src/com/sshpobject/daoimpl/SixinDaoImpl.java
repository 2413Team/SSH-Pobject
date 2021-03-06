package com.sshpobject.daoimpl;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
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
	public void sendSixin(Sixin sixin,User user) {
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
		sixin.setCreatdate(date);
		sixin.setUserBySetuserid(user);
		getSession();
		sess.save(sixin);
		distroy();
	}

	@Override
	public List<Sixin> getSixin(User user) {
		getSession();
		String sql="FROM Sixin WHERE  userByGetuserid.id="+user.getId();
		Query query=sess.createQuery(sql);
		List<Sixin> list=query.list();
		for(int i=0;i<list.size();i++){
			String test=list.get(i).getUserBySetuserid().getName();
			Date date=list.get(i).getCreatdate();
		}
		List<Sixin> newList=new ArrayList<Sixin>();
		for(int i=list.size()-1;i>=0;i--)
		{
			newList.add(list.get(i));
		}
		distroy();
		return newList;
	}
	
	
	public void getSession(){
		sess=sf.openSession();
		tx=sess.beginTransaction();
	}
	//ִ�в���������
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
