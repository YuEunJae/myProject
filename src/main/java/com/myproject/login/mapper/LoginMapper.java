package com.myproject.login.mapper;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.myproject.join.vo.JoinVO;

@Mapper
public interface LoginMapper {
	
	public String getIsLock(String id);
	public void plusPwdMiss(String id);
	public HashMap loginUser(JoinVO vo);
	public void setIsLock(String id);
	
}
