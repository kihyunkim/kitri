<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript">
// 	function btn_update() { location.href="detail.do"; }
	function btn_complete() { location.href="main.do"; }
</script>
</head>
<body>
	<c:set value="${member}" var="member"/>
	<div id="center_container" align="center">
		<div id="result_container" align="center">
			<h2>${member.m_name }�� ȯ���մϴ�.</h2>
			<table cellspacing="20">
				<tr>
					<td>���̵� </td>
					<td>${member.m_id }</td>
				</tr>
				<tr>
					<td>�̸� </td>
					<td>${member.m_name }</td>
				</tr>
				<tr>
					<td>���� </td>
					<td>${member.m_age }</td>
				</tr>
				<tr>
					<td>����ó </td>
					<td>${member.m_phone }</td>
				</tr>
				<tr>
					<td>�ּ� </td>
					<td>${member.m_addr }</td>
				</tr>
				<tr>
					<td><input type="button" value="����" /></td>
					<td><input type="button" value="�Ϸ�" onClick="btn_complete()"/></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>