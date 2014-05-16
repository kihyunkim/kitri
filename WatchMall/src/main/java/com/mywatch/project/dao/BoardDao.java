package com.mywatch.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.mywatch.project.dto.Board;

public class BoardDao {
	public BoardDao() {
	}
	
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public List<Board> board_list(Board board) {
		List<Board> list = sqlSession.selectList("list_board", board);
		return list;
	}
}
