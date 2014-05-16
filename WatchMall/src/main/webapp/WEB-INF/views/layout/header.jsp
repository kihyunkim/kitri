<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript">
	function btn_add() {
		location.href = "insert_member_page.do";
	}
	function btn_login() {
		location.href = "login.do";
	}
	function btn_logout() {
		location.href = "logout.do";
	}
	function btn_adminpage() {
		location.href = "managePage.do";
	}
	function btn_myPage() {
		location.href = "myPage.do";
	}
	function btn_qna() {
		location.href="list_board.do";
	}
</script>
</head>
<body>
	<div id="header_container" align="center">
		<h1 id="title">Welcome</h1>
		<hr />
		<div id="header_naviContainer" align="center">
			<c:set value="${MEMBERID }" var="m_id" />
			<c:set value="${MEMBERNAME }" var="m_name" />
			<c:choose>
				<c:when test="${m_id==null }">
					<input class="btn_menu" type="button" onClick="btn_login()" value="�α���" />
					<input class="btn_menu" type="button" onClick="btn_add()" value="ȸ������" />
				</c:when>
				<c:when test="${m_id=='admin' }">
					<input class="btn_menu" type="button" onClick="btn_adminpage()" value="������������" />
					<input class="btn_menu" type="button" onClick="btn_logout()" value="�α׾ƿ�" />
					<h4 class="msg">�������������Դϴ�</h4>
				</c:when>
				<c:otherwise>
					<input class="btn_menu" type="button" onClick="btn_logout()" value="�α׾ƿ�" />
					<input class="btn_menu" type="button" onClick="btn_myPage()" value="����������" />
					<h4 class="msg">${MEMBERNAME }�� ȯ���մϴ�</h4>
				</c:otherwise>
			</c:choose>
			<!-- ���� �޴� -->
			<input id="btn_qna" type="button" value="Q&A Board" onClick="btn_qna()" 
				onmouseover = "this.style.backgroundColor = '#B1E1FF'"
				onmouseout = "this.style.backgroundColor = '#F2F2F2'"/>
		</div>
	</div>
</body>
</html>