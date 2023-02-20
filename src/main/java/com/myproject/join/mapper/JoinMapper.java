package com.myproject.join.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.myproject.join.vo.JoinVO;

@Mapper
public interface JoinMapper {
	
	public String idCheck(String id);
	public int join(JoinVO vo);
	
}
