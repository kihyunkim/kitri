<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
	<div id="center_container" align="center">
		<div id="insert_container" align="center">
			<h3>회원가입</h3>
			<form action="insert_member.do" method="POST">
				<table cellspacing="20">
					<tr>
						<td>아이디 </td>
						<td><input type="text" name="m_id" /></td>
					</tr>
					<tr>
						<td>비밀번호 </td>
						<td><input type="password" name="m_pw" /></td>
					</tr>
					<tr>
						<td>비밀번호(확인) </td>
						<td><input type="password" name="m_pw_check" /></td>
					</tr>
					<tr>
						<td>이름 </td>
						<td><input type="text" name="m_name" /></td>
					</tr>
					<tr>
						<td>나이 </td>
						<td><input type="text" name="m_age" /></td>
					</tr>
					<tr>
						<td>전화번호 </td>
						<td><input type="text" name="m_phone" /></td>
					</tr>
					<tr>
						<td>주소 </td>
						<td><input type="text" name="m_addr" /></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="완료" /></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>