<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style type="text/css">
div#adminContainer {
	width: 300px;
	height: 200px;
	background: #F2F2F2;
	border-style: solid;
}

input.btn_admin {
	width: 100px;
	height: 80px;
	font-size: 20px;
}
</style>
<script type="text/javascript">
	function manage_member() {
		location.href = "list_member.do";
	}
	function manage_product() {
		alert("준비중입니다");
	}
</script>
</head>
<body>
	<div id="center_container" align="center">
		<div id="adminContainer" align="center">
			<input class="btn_admin" type="button" value="회원관리" onClick="manage_member()" /> 
			<input class="btn_admin" type="button" value="상품관리" onClick="manage_product()" />
		</div>
	</div>
</body>
</html>