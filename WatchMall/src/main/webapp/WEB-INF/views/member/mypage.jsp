<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style type="text/css">
div#memberContainer {
	width: 300px;
	height: 200px;
	background: #F2F2F2;
	border-style: solid;
}
</style>

<script type="text/javascript">
	function btn_update(m_num) {
		location.href="detail_member.do?m_num="+m_num;
	}
</script>
</head>
<body>
	<div id="center_container" align="center">
		<div id="memberContainer" align="center">
			<input type="button" value="정보수정" onClick="btn_update(${MEMBERNUM })" />
		</div>
	</div>
</body>
</html>