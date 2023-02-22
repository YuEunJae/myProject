package com.myproject.login.services;

import java.util.HashMap;

import com.myproject.join.vo.JoinVO;

public interface LoginService {
	
	public String getIsLock(String id);
	public HashMap loginUser(JoinVO vo);
	public void plusPwdMiss(String id);
	public void setIsLock(String id);

}
