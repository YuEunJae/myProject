package com.myproject.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.myproject.board.vo.BoardVO;
import com.myproject.util.Criteria;

@Mapper
public interface BoardMapper {
	
	public int getTotal(); // 게시글 수 가져오기
	public List<BoardVO> getContentList(Criteria cri); // 게시글 가져오기
	public BoardVO getDetailContent(String bno); // 상세게시글 가져오기
	public int regist(BoardVO vo); // 게시글 등록
	public int update(BoardVO vo); // 게시글 업데이트
	public int delete(BoardVO vo); // 게시글 삭제

}
