package com.myproject.join.services;

import com.myproject.join.vo.JoinVO;

public interface JoinService {
	
	public String idCheck(String id);
	public int joinUser(JoinVO vo);

}
