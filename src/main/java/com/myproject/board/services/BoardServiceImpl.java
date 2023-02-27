package com.myproject.board.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myproject.board.mapper.BoardMapper;
import com.myproject.board.vo.BoardVO;
import com.myproject.util.Criteria;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardMapper boardMapper;
	
	@Override
	public List<BoardVO> getContentList(Criteria cri) {
		return boardMapper.getContentList(cri);
	}
	
	@Override
	public BoardVO getDetailContent(String bno) {
		return boardMapper.getDetailContent(bno);
	}
	
	@Override
	public int regist(BoardVO vo) {
		return boardMapper.regist(vo);
	}
	
	@Override
	public int update(BoardVO vo) {
		return boardMapper.update(vo);
	}
	
	@Override
	public int delete(BoardVO vo) {
		return boardMapper.delete(vo);
	}

}
