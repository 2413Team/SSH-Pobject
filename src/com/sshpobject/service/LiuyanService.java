package com.sshpobject.service;

import java.util.ArrayList;
import java.util.List;

import com.sshpobject.daoimpl.LiuyanDaoImpl;
import com.sshpobject.model.Liuyan;
import com.sshpobject.model.Organization;
import com.sshpobject.model.User;

public class LiuyanService {
	private LiuyanDaoImpl liuyanDao;

	public void addLiuyan(Liuyan liuyan, User user) {
		liuyanDao.addLiuyan(liuyan, user);
	}

	public List<Liuyan> getAllLiuyan(Organization organization) {
		return liuyanDao.getAllLiuyan(organization);
	}
	
	public LiuyanDaoImpl getLiuyanDao() {
		return liuyanDao;
	}

	public void setLiuyanDao(LiuyanDaoImpl liuyanDao) {
		this.liuyanDao = liuyanDao;
	}
	
	
}
