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
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.sshpobject.dao.ShuoshuoDao;
import com.sshpobject.model.Shuoshuo;
import com.sshpobject.model.User;
import com.sshpobject.model.UserOrganization;

public class ShuoshuoDaoimpl  implements ShuoshuoDao  {

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
		getSessions();
		sess.save(shuoshuo);
		distroy();
	}

	@Override
	public List<Shuoshuo> getAllShuoshuo(User user) {
		getSessions();
		List<UserOrganization> uoList=getUserOrganization(user);
		List<Shuoshuo> shuoList=new ArrayList<Shuoshuo>();
		uoList=getUserUser(uoList);
		if(uoList.size()>0)
			shuoList=getManyShuoshuo(uoList);
		sess.close();
		return shuoList;
	}
	
	//获得现在登陆的用户所在的所有组织
	private List<UserOrganization> getUserOrganization(User user){
		List<UserOrganization> list=new ArrayList<UserOrganization>();
		String sql="FROM UserOrganization WHERE user.id="+user.getId();
		Query query=sess.createQuery(sql);
		list=query.list();
		return list;
	}
	//得到现在登陆用户所在组织的所有用户
	private List<UserOrganization> getUserUser(List<UserOrganization> list){
		List<UserOrganization> userList=new ArrayList<UserOrganization>();
		for(int i=0;i<list.size();i++){
			String sql="FROM UserOrganization WHERE organization.id="+list.get(i).getOrganization().getId();
			Query query=sess.createQuery(sql);
			userList.addAll(query.list());
		}
		if(userList.size()>0){
			//去除相同用户的字段
			int flag=userList.get(0).getUser().getId();
			for(int i=1;i<userList.size();i++){
				if(userList.get(i).getUser().getId() == flag)
				{
					userList.remove(i);
					i--;
				}
				else 
					flag=userList.get(i).getUser().getId();
			}
		}
		return userList;
	}	
	//获得组织对应的所有用户
	private  List<Shuoshuo> getManyShuoshuo(List<UserOrganization> list){
		List<Shuoshuo> shuoList=new ArrayList<Shuoshuo>();
		String sql="";
		if(list.size()>0)
			sql="FROM Shuoshuo WHERE user.id IN("+list.get(0).getUser().getId();
		for(int i=1;i<list.size();i++){
			sql=sql+","+list.get(i).getUser().getId();
		}
		sql=sql+")";
		Query query=sess.createQuery(sql);
		shuoList=query.list();
		List<Shuoshuo> newList=new ArrayList<Shuoshuo>();
		for(int i=shuoList.size()-1;i>=0;i--)
		{
			String test=shuoList.get(i).getUser().getName();
			newList.add(shuoList.get(i));
		}
		return newList;
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
