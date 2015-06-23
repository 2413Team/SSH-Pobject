package com.sshpobject.dao;

import java.util.List;

import com.sshpobject.model.Shuoshuo;
import com.sshpobject.model.User;

public interface ShuoshuoDao {
	public void addShuoshuo(Shuoshuo shuoshuo,User user);
	public List<Shuoshuo> getAllShuoshuo (User user);
}
