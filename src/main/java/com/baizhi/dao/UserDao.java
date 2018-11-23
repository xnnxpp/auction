package com.baizhi.dao;

import com.baizhi.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
	
	public User login(@Param("name") String name, @Param("password") String password);
	
	
	public void regist(User user);
}
