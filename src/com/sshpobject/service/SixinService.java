package com.sshpobject.service;

import com.sshpobject.daoimpl.SixinDaoImpl;

public class SixinService {
	private SixinDaoImpl dao;

	public SixinDaoImpl getDao() {
		return dao;
	}

	public void setDao(SixinDaoImpl dao) {
		this.dao = dao;
	}
	
}
