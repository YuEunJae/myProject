package com.myproject.join.vo;

import org.apache.ibatis.type.Alias;

import lombok.Data;


@Data
@Alias("JoinVO")
public class JoinVO {
	
	private String id;
	private String pwd;
	private String email;

}
