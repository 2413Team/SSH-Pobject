package com.sshpobject.service;

import java.util.List;

import com.sshpobject.daoimpl.SixinDaoImpl;
import com.sshpobject.model.Sixin;
import com.sshpobject.model.User;

public class SixinService {
	private SixinDaoImpl sixinDao;
	
	public void sendSixin(Sixin sixin,User user){
		sixinDao.sendSixin(sixin, user);
	}
	
	public List<Sixin> getSixin(User user){
		return sixinDao.getSixin(user);
	}

	public SixinDaoImpl getSixinDao() {
		return sixinDao;
	}

	public void setSixinDao(SixinDaoImpl sixinDao) {
		this.sixinDao = sixinDao;
	}

}
