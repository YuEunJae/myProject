package com.myproject.join.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myproject.join.mapper.JoinMapper;
import com.myproject.join.vo.JoinVO;

@Service("joinService")
public class JoinServiceImpl implements JoinService{
	
	@Autowired(required=false)
	private JoinMapper joinMapper;

	@Override
	public String idCheck(String id) {
		return joinMapper.idCheck(id);
	}
	
	@Override
	public int join(JoinVO vo) {
		return joinMapper.join(vo);
	}
}
