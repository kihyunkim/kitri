package com.mywatch.project.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import com.mywatch.project.dto.Member;

public class MemberDao {
	public MemberDao() {
	}
	
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public void insert_member(Member member) {
		System.out.println("[MemberDao]insert_member");
		sqlSession.insert("insert_member", member);
	}

	public boolean loginCheck(Member member, HttpSession session) {
		boolean check = false;
		member = (Member) sqlSession.selectOne("member_check", member);
		
		if (member==null) {
			check = false;
		} else {
			session.setAttribute("MEMBERID", member.getM_id());
			session.setAttribute("MEMBERNAME", member.getM_name());
			session.setAttribute("MEMBERNUM", member.getM_num());
			session.setMaxInactiveInterval(-1);
			check = true;
		}
		
		return check;
	}

	public List<Member> list_member(Member member) {
		List<Member> list;
		list =  sqlSession.selectList("member_list", member);
		return list;
	}

	public void delete_member(int m_num) {
		sqlSession.delete("member_delete", m_num);
	}

	public Member detail_member(int m_num) {
		Member member = new Member();
		member = (Member) sqlSession.selectOne("member_detail", m_num);
		return member;
	}

	public void detail_member(Member member) {
		sqlSession.update("member_update", member);
	}
}
