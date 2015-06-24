package com.sshpobject.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.sshpobject.dao.OrganizationRequestDao;
import com.sshpobject.model.OrganizationRequest;
import com.sshpobject.model.User;

public class OrganizationRequestDaoImpl implements OrganizationRequestDao {
	private SessionFactory sf;
	private Session sess;
	private Transaction tx;
	//发送加入组织请求
	@Override
	public void sendRequest(OrganizationRequest organizationRequest) {
		

	}
	//获得应该获得的请求
	@Override
	public List<OrganizationRequest> haveRequest(User user) {
		return null;
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
