<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
	<div id="center_container" align="center">
		<div id="login_title">
			<h3>�α��� ���ּ���</h3>
		</div>
		<div id="input_container">
			<form action="login_check.do" method="POST">
				<table border="1">
					<tr>
						<td>���̵� </td>
						<td><input type="text" name="m_id" /></td>
					</tr>
					<tr>
						<td>�н����� </td>
						<td><input type="password" name="m_pw" /></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="Ȯ��" /></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>