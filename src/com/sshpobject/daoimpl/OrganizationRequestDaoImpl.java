package com.sshpobject.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.sshpobject.dao.OrganizationRequestDao;
import com.sshpobject.model.OrganizationRequest;
import com.sshpobject.model.User;
import com.sshpobject.model.UserOrganization;

public class OrganizationRequestDaoImpl implements OrganizationRequestDao {
	private SessionFactory sf;
	private Session sess;
	private Transaction tx;
	private SixinDaoImpl sixinDao;
	//发送加入组织请求
	@Override
	public void sendRequest(OrganizationRequest organizationRequest) {
		getSessions();
		organizationRequest.setAgree(0);
		sess.save(organizationRequest);
		distroy();
	}
	//获得应该获得的请求
	@Override
	public List<OrganizationRequest> haveRequest(User user) {
		getSessions();
		List<OrganizationRequest> list=new ArrayList<OrganizationRequest>();
		List<UserOrganization> uoList=getUserOrganizaiton(user);
		list=getAllRequest(uoList);
		sess.close();
		return list;
	}
	
	private List<UserOrganization> getUserOrganizaiton(User user){
		List<UserOrganization> list=new ArrayList<UserOrganization>();
		String sql="FROM UserOrganization WHERE user.id="+user.getId()+" AND isadmin=1";
		Query query=sess.createQuery(sql);
		list=query.list();
		return list;
	}
	
	private List<OrganizationRequest> getAllRequest(List<UserOrganization> orlist){
		List<OrganizationRequest> list=new ArrayList<OrganizationRequest>();
		String sql=null;
		for(int i=0;i<orlist.size();i++){
			sql="FROM OrganizationRequest WHERE organization.id="+orlist.get(i).getOrganization().getId()+" AND agree=0";
			Query query=sess.createQuery(sql);
			list.addAll(query.list());
		}
		for(int i=0;i<list.size();i++){
			String test=list.get(i).getUser().getName();
			test=list.get(i).getOrganization().getName();
		}
		return list;
	}
	
	@Override
	public void agreeRequest(OrganizationRequest organizationRequest) {
		getSessions();
		addAgreeUser(organizationRequest);
		setAgreeToOk(organizationRequest);
		sendAgreeSixin(organizationRequest);
		distroy();
	}
	
	//把申请者写入UserOrganization表
	private void addAgreeUser(OrganizationRequest organizationRequest){
		UserOrganization userOrganization=new UserOrganization();
		userOrganization.setIsadmin(0);
		userOrganization.setOrganization(organizationRequest.getOrganization());
		userOrganization.setUser(organizationRequest.getUser());
		sess.save(userOrganization);
	}
	
	//修改申请表agree字段为1
	private void setAgreeToOk(OrganizationRequest organizationRequest){
		String sql="UPDATE OrganizationRequest SET agree=1  WHERE id="+organizationRequest.getId();
		Query query=sess.createQuery(sql);
		sess.update(query);
	}

	//发送私信给申请者-你加入某组织的申请已经被同意了
	private void sendAgreeSixin(OrganizationRequest organizationRequest){
		
	}
	
	@Override
	public void disagreeRequest(OrganizationRequest organizationRequest) {
		// TODO Auto-generated method stub
		
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
	public SixinDaoImpl getSixinDao() {
		return sixinDao;
	}
	public void setSixinDao(SixinDaoImpl sixinDao) {
		this.sixinDao = sixinDao;
	}
	
	
	
	

}
