package com.myproject.join.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface JoinMapper {
	
	public String idCheck(String id);
	
}
