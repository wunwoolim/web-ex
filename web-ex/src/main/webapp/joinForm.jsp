<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- <button>가입</button> -->
	<!-- form 안에 button태그는 submit 동작을 하게됨 -->
	<form method="POST" action="joinFormPro.jsp">
		
				<div><input type="text" name="username" id="username" placeholder="아이디"></div>
				<div><input type="text" name="userpassword" id="userpassword" placeholder="비밀번호"></div>
			
				<div><input type="text" name="name" id="name" placeholder="이름"></div>
				<div><input type="text" name="birth " id="birth" placeholder="생년월일"></div>
				<div>
					<input type="radio" name="gender" id="man" value="남자">남자
					<input type="radio" name="gender" id="gender" value="여자">여자
				</div>
				<div>
					<input type="radio" name="tel" id="STK" value="STK">STK
					<input type="radio" name="tel" id="KT" value="KT">KT
					<input type="radio" name="tel" id="LG" value="LG U+">LG U+
				</div>
				<div><input type="text" name="pnum " id="pnum" placeholder="핸드폰 번호"></div>
			
		
			<input type="button" value="join" onclick="checkForm(form)">
		
	</form>
	<script src="resource/script/vaildation.js"></script>
</body>
</html>