<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript">
// 	alert('${member.m_name}');
// 	function btn_complete() {
// 		if(confirm('ok?')) {
// 			location.href="update_member.do";
// 		}
// 	}
</script>
</head>
<body>
	<c:set value="${member }" var="member" />
	<div id="center_container" align="center">
		<h3>��������</h3>
		<div id="detail_container" align="center">
			<form action="update_member.do" method="post">
				<table cellpadding="10" cellspacing="7">
					<tr>
						<td>ȸ����ȣ </td>
						<td><input type="text" readonly="readonly" value="${member.m_num }" name="m_num"/></td>
					</tr>
					<tr>
						<td>���̵� </td>
						<td><input type="text" readonly="readonly" value="${member.m_id }" name="m_id"/></td>
					</tr>
					<tr>
						<td>�н����� </td>
						<td><input type="text" value="${member.m_pw }" name="m_pw"/></td>
					</tr>
					<tr>
						<td>�̸� </td>
						<td><input type="text" readonly="readonly" value="${member.m_name }" name="m_name"/></td>
					</tr>
					<tr>
						<td>���� </td>
						<td><input type="text" value="${member.m_age }" name="m_age"/></td>
					</tr>
					<tr>
						<td>��ȭ��ȣ </td>
						<td><input type="text" value="${member.m_phone }" name="m_phone"/></td>
					</tr>
					<tr>
						<td>�ּ� </td>
						<td><input type="text" value="${member.m_addr }" name="m_addr"/></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="�Ϸ�" /></td>
<!-- 						<td><input type="button" value="�Ϸ�" onClick="btn_complete()"/></td> -->
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>