package com.sshpobject.dao;

import java.util.List;

import com.sshpobject.model.Sixin;
import com.sshpobject.model.User;

public interface SixinDao {
	public void sendSixin(Sixin sixin);
	public List<Sixin> getSixin(User user);
}
