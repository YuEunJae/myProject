package com.myproject.login.services;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myproject.join.vo.JoinVO;
import com.myproject.login.mapper.LoginMapper;

@Service("loginService")
public class LoginSerivceImpl implements LoginService{
	
	@Autowired
	private LoginMapper loginMapper;
	
	@Override
	public String getIsLock(String id) {
		return loginMapper.getIsLock(id);
	}
	
	@Override
	public void plusPwdMiss(String id) {
		loginMapper.plusPwdMiss(id);
	}
	
	@Override
	public HashMap loginUser(JoinVO vo) {
		return loginMapper.loginUser(vo);
	}
	
	@Override
	public void setIsLock(String id) {
		loginMapper.setIsLock(id);
	}

}
