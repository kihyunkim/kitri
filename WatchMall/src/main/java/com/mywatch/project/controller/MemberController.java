package com.mywatch.project.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mywatch.project.dao.MemberDao;
import com.mywatch.project.dto.Member;

@Controller
public class MemberController {
	public MemberController() {
	}

	@Autowired
	MemberDao dao;

	public void setDao(MemberDao dao) {
		this.dao = dao;
	}

	/* ȸ������ �������� �̵� */
	@RequestMapping(value = "insert_member_page.do", method = RequestMethod.GET)
	public String insert_page() throws Exception {
		return "member/insert";
	}

	/* ȸ������ �Ϸ� */
	@RequestMapping(value = "insert_member.do", method = RequestMethod.POST)
	public String insert_action(Member member) throws Exception {
		dao.insert_member(member);
		return "member/insert_result";
	}

	/* login �������� �̵� */
	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String login_page() throws Exception {
		return "member/login";
	}

	/* login ���� */
	@RequestMapping(value = "login_check.do", method = RequestMethod.POST)
	public String login_check(@RequestParam("m_id") String m_id,
			@RequestParam("m_pw") String m_pw, HttpSession session)
			throws Exception {
		Member member = new Member();
		member.setM_id(m_id);
		member.setM_pw(m_pw);

		boolean check = dao.loginCheck(member, session);

		if (check == true) {
			return "common/main";
		} else {
			return "member/login";
		}
	}

	/* logout ���� */
	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public String logout_action(HttpSession session) {
		session.invalidate();
		return "common/main";
	}

	/* Admin �������� �̵� */
	@RequestMapping(value = "managePage.do", method = RequestMethod.GET)
	public String manage_page() {
		return "admin/adminPage";
	}

	/* ȸ�� ����Ʈ */
	@RequestMapping(value = "list_member.do", method = RequestMethod.GET)
	public String list_page(Member member, Model model) {
		List<Member> list = dao.list_member(member);

		model.addAttribute("list", list);

		return "member/list";
	}
	
	/* ȸ�� ���� */
	@RequestMapping(value = "delete_member.do", method = RequestMethod.GET)
	public String delete_action(Member member, Model model, @RequestParam("m_num") int m_num) {
		dao.delete_member(m_num);
		List<Member> list = dao.list_member(member);
		
		model.addAttribute("list", list);
		return "member/list";
	}
	
	/* ������������ �̵� */
	@RequestMapping(value = "myPage.do", method = RequestMethod.GET)
	public String mypage_page() {
		return "member/mypage";
	}
	
	/* ȸ�� ������������ �̵� */
	@RequestMapping(value = "detail_member.do", method = RequestMethod.GET)
	public String detail_page(@RequestParam("m_num")int m_num, Member member, Model model) {
		member = dao.detail_member(m_num);
		model.addAttribute("member", member);
		return "member/detail";
	}
	
	/* ȸ�� ���� �Ϸ� */
	@RequestMapping(value = "update_member.do", method = RequestMethod.POST)
	public String detail_action(Member member) {
		dao.detail_member(member);
		return "member/mypage";
	}
	
}
