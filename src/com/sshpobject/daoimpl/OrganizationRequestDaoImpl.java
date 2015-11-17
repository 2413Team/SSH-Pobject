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

import com.sshpobject.dao.OrganizationRequestDao;
import com.sshpobject.model.OrganizationRequest;
import com.sshpobject.model.Sixin;
import com.sshpobject.model.User;
import com.sshpobject.model.UserOrganization;

public class OrganizationRequestDaoImpl implements OrganizationRequestDao {
	private SessionFactory sf;
	private Session sess;
	private Transaction tx;
	private SixinDaoImpl sixinDao;
	//���ͼ�����֯����
	@Override
	public void sendRequest(OrganizationRequest organizationRequest) {
		getSessions();
		organizationRequest.setAgree(0);
		sess.save(organizationRequest);
		distroy();
	}
	//���Ӧ�û�õ�����
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
		addMembercount(organizationRequest);
		sendAgreeSixin(organizationRequest);
		distroy();
	}
	
	//��������д��UserOrganization��
	private void addAgreeUser(OrganizationRequest organizationRequest){
		UserOrganization userOrganization=new UserOrganization();
		userOrganization.setIsadmin(0);
		userOrganization.setOrganization(organizationRequest.getOrganization());
		userOrganization.setUser(organizationRequest.getUser());
		sess.save(userOrganization);
	}
	
	//�޸������agree�ֶ�Ϊ1
	private void setAgreeToOk(OrganizationRequest organizationRequest){
		String sql="UPDATE OrganizationRequest SET agree=1  WHERE id="+organizationRequest.getId();
		Query query=sess.createQuery(sql);
		query.executeUpdate();
	}
	//��Ա��+1
	private  void addMembercount(OrganizationRequest organizationRequest){
		String sql="UPDATE Organization SET membercount=membercount+1 WHERE id="+organizationRequest.getOrganization().getId();
		Query query=sess.createQuery(sql);
		query.executeUpdate();
	}

	//����˽�Ÿ�������-�����ĳ��֯�������Ѿ���ͬ����
	private void sendAgreeSixin(OrganizationRequest organizationRequest){
		Sixin sixin=new Sixin();
		User system=new User();
		system.setId(9);
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
		sixin.setUserBySetuserid(system);
		sixin.setUserByGetuserid(organizationRequest.getUser());
		sixin.setValue("�����롾"+organizationRequest.getOrganization().getName()+"���������ѱ�ͬ��");
		sess.save(sixin);
	}
	
	@Override
	public void disagreeRequest(OrganizationRequest organizationRequest) {
		getSessions();
		setAgreeToNo(organizationRequest);
		sendDisagreeSixin(organizationRequest);
		distroy();
	}
	
	//�޸������agree�ֶ�Ϊ0
	private void setAgreeToNo(OrganizationRequest organizationRequest){
		String sql="UPDATE OrganizationRequest SET agree=2  WHERE id="+organizationRequest.getId();
		Query query=sess.createQuery(sql);
		query.executeUpdate();
	}

	//����˽�Ÿ�������-�����ĳ��֯�������Ѿ���ͬ����
	private void sendDisagreeSixin(OrganizationRequest organizationRequest){
		Sixin sixin=new Sixin();
		User system=new User();
		system.setId(9);
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
		sixin.setUserBySetuserid(system);
		sixin.setUserByGetuserid(organizationRequest.getUser());
		sixin.setValue("�����롾"+organizationRequest.getOrganization().getName()+"���������ѱ��ܾ�");
		sess.save(sixin);
	}
	
	public void getSessions(){
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
	public SixinDaoImpl getSixinDao() {
		return sixinDao;
	}
	public void setSixinDao(SixinDaoImpl sixinDao) {
		this.sixinDao = sixinDao;
	}
	
	
	
	

}
