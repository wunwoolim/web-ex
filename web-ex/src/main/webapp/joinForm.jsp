<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="joinFormPro.jsp">
		<input type="text" name="username" id="username">
		
		<input type="button" value="join" onclick="checkForm(form)">
		<!-- <button>가입</button> -->
		<!-- form 안에 button태그는 subnit 동작을 하게됨 -->
	</form>
	<script src="rseource/script/vaildation.js"></script>
</body>
</html>