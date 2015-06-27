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

import com.sshpobject.dao.LiuyanDao;
import com.sshpobject.model.Liuyan;
import com.sshpobject.model.Organization;
import com.sshpobject.model.User;

public class LiuyanDaoImpl implements LiuyanDao {
	private SessionFactory sf;
	private Session sess;
	private Transaction tx;
	
	@Override
	public void addLiuyan(Liuyan liuyan, User user) {
		Date date=null;
		DateFormat fmt =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		String strDate=fmt.format(new Date());
		try {
			date = fmt.parse(strDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		liuyan.setCreatdate(date);
		liuyan.setUser(user);
		getSession();
		sess.save(liuyan);
		distroy();
	}

	@Override
	public List<Liuyan> getAllLiuyan(Organization organization) {
		List<Liuyan> list=new ArrayList<Liuyan>();
		String sql="FROM Liuyan WHERE organization.id="+organization.getId();
		getSession();
		Query query=sess.createQuery(sql);
		list=query.list();
		for(int i=0;i<list.size();i++){
			String test=list.get(i).getOrganization().getName();
			test=list.get(i).getUser().getName();
		}
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
	}

	public SessionFactory getSf() {
		return sf;
	}

	public void setSf(SessionFactory sf) {
		this.sf = sf;
	}

	
}
