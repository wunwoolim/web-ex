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
	<form method="POST" action="joinFormPro.jsp" id="form">
		
				<div><input type="text" name="username" id="username" placeholder="아이디"></div>
				<div id="usernameCheck" style="display : none; color : red; font-size: 10px;">아이디는 필수 입력값입니다.</div>
				
				<div><input type="password" name="userpassword" id="userpassword" placeholder="비밀번호"></div>
				<div id="passwordCheck" style="display : none; color : red; font-size: 10px;">비밀번호는 필수 입력값입니다.</div>
				
				<div><input type="text" name="name" id="name" placeholder="이름"></div>
				<div id="nameCheck" style="display : none; color : red; font-size: 10px;">이름은 필수 입력값입니다.</div>
				
				<div><input type="text" name="birth" id="birth" placeholder="생년월일"></div>
				<div id="birthCheck" style="display : none; color : red; font-size: 10px;">생년월일은 필수 입력값입니다.</div>
				
				<div>
					<input type="radio" name="gender" id="man" value="남자">남자
					<input type="radio" name="gender" id="gender" value="여자">여자
				</div>
				<div id="genderCheck" style="display : none; color : red; font-size: 10px;">성별은 필수 선택값입니다.</div>
				
				<div>
					<input type="radio" name="tel" id="STK" value="STK">STK
					<input type="radio" name="tel" id="KT" value="KT">KT
					<input type="radio" name="tel" id="LG" value="LG U+">LG U+
				</div>
				<div id="telCheck" style="display : none; color : red; font-size: 10px;">통신사는 필수 선택값입니다.</div>
				
				<div><input type="text" name="pnum" id="pnum" placeholder="핸드폰 번호"></div>
				<div id="pnumCheck" style="display : none; color : red; font-size: 10px;">핸드폰 번호는 필수 입력값입니다.</div>
			
		
			<input type="button" value="join" onclick="checkForm(form)">
		
	</form>
	<script src="resource/script/vaildation.js"></script>
</body>
</html>