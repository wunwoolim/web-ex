<%-- 주석 --%>
<%-- java Server page : jsp --%>
<%-- html 문서 안에 작성된 java 언어 --%>
<%@page import="java.util.ArrayList"%>
<%@page import="user.UserResponseDto"%>
<%@page import="user.UserRequestDto"%>
<%@page import="user.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
			UserDao userDao = UserDao.getInstance();
			System.out.println("size1 : " + userDao.getSize());
			
			UserRequestDto user = new UserRequestDto("apple","1234");

			//회원가입
			// 중복 username에 대한 예회처리
			boolean result = userDao.createUser(user);
			System.out.println(result);
			
			result = userDao.createUser(user);
			System.out.println(result);
			System.out.println(userDao.getSize());
			//회원조회
			// 한명 조회 & 전체 조회
			UserResponseDto responseUser = userDao.findByUsername("apple");
			System.out.println("responseUser : "+responseUser);
			
			ArrayList<UserResponseDto> list = userDao.findAll();
			System.out.println("list : "+list);
			//회원정보 수정 --> 비밀번호
			// 비밀번호 검증
			userDao.setUser(user, "1111");
			responseUser =  userDao.findByUsername("apple");
			System.out.println("responseUser : "+responseUser);
			
			user.setPassword("0000");
			userDao.setUser(user, "2222");
			responseUser =  userDao.findByUsername("apple");
			System.out.println("responseUser : "+responseUser);
			//회원탈퇴
			// 비밀번호 검증
			user.setPassword("1111");
			result = userDao.delsetUser(user);
			System.out.println("delete user : "+result);
			System.out.println("list : "+list);
	%>
	
</body>
</html>