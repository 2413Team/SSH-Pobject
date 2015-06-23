package com.sshpobject.service;

import com.sshpobject.daoimpl.SixinDaoImpl;
import com.sshpobject.model.Sixin;
import com.sshpobject.model.User;

public class SixinService {
	private SixinDaoImpl sixinDao;
	
	public void sendSixin(Sixin sixin,User user){
		sixinDao.sendSixin(sixin, user);
	}

	public SixinDaoImpl getSixinDao() {
		return sixinDao;
	}

	public void setSixinDao(SixinDaoImpl sixinDao) {
		this.sixinDao = sixinDao;
	}

}
