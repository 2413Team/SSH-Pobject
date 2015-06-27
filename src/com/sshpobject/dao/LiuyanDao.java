package com.sshpobject.dao;

import java.util.List;

import com.sshpobject.model.Liuyan;
import com.sshpobject.model.Organization;
import com.sshpobject.model.User;


public interface LiuyanDao {
	public void addLiuyan(Liuyan liuyan,User user);
	public List<Liuyan> getAllLiuyan (Organization organization);
}
