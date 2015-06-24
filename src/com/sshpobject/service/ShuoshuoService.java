package com.sshpobject.service;

import java.util.List;

import com.sshpobject.daoimpl.ShuoshuoDaoimpl;
import com.sshpobject.model.Shuoshuo;
import com.sshpobject.model.User;

public class ShuoshuoService {
	private ShuoshuoDaoimpl shuoshuoDao;

	public void addShuoshuo(Shuoshuo shuoshuo,User user){
		shuoshuoDao.addShuoshuo(shuoshuo, user);
	}
	
	public List<Shuoshuo> getShuoshuos(User user){
		return shuoshuoDao.getAllShuoshuo(user);
	}
	
	public ShuoshuoDaoimpl getShuoshuoDao() {
		return shuoshuoDao;
	}

	public void setShuoshuoDao(ShuoshuoDaoimpl shuoshuoDao) {
		this.shuoshuoDao = shuoshuoDao;
	}
	
	
}
