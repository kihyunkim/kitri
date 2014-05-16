<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style type="text/css">
table#line th {
	border-bottom: 2px solid black;
}
table#line td {
	border-bottom: 1px solid white;
	word-break:break-all
}
</style>
<script type="text/javascript">
	function btn_delete(m_num) {
		if (confirm('삭제하시겠습니까?')) {
			location.href="delete_member.do?m_num="+m_num;
		}
	}
</script>
</head>
<body>
	<div id="center_container" align="center">
		<div id="list_container" align="center">
			<h3>회원관리</h3>
			<table id="line" cellspacing="7" cellpadding="10" width="700">
				<tr>
					<th>Num</th>
					<th>ID</th>
					<th>Name</th>
					<th>Age</th>
					<th>Phone</th>
					<th>Address</th>
					<th>Del</th>
				</tr>
				<c:forEach var="list" items="${list }">
					<tr>
						<td>${list.m_num }</td>
						<td>${list.m_id }</td>
						<td>${list.m_name }</td>
						<td>${list.m_age }</td>
						<td>${list.m_phone }</td>
						<td width="80">${list.m_addr }</td>
						<td><input type="button" value="DEL" onClick="btn_delete(${list.m_num})"/></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>