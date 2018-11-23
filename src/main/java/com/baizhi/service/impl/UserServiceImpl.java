package com.baizhi.service.impl;

import com.baizhi.dao.UserDao;
import com.baizhi.entity.User;
import com.baizhi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	@Override
	
	public User login(String name, String password) {
		User user = userDao.login(name, password);
		return user;
	}

	@Override
	public void regist(User user) {
		userDao.regist(user);
	}

}
