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
	word-break: break-all
}
</style>
</head>
<body>
	<div id="center_container" align="center">
		<div id="board_container">
			<table id="line" cellpadding="5" cellspacing="5">
				<tr>
					<th>Num</th>
					<th>Writer</th>
					<th width="250">Title</th>
					<th>Reg Date</th>
					<th>Count</th>
				</tr>
				<c:forEach var="list" items="${list }">
				<tr>
					<td>${list.bq_num }</td>
					<td>${list.bq_title }</td>
					<td>${list.bq_writer }</td>
					<td>${list.bq_regdate }</td>
					<td>${list.bq_hitcount }</td>
				</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>