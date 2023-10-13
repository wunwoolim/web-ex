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
		//java 문장안 작성하기
		//response 내장객체 활용 -> sendRedirect() 호출, mypage로 이동
		
		request.setCharacterEncoding("UTF-8");
		String username =	request.getParameter("username");
		String userpassword =	request.getParameter("userpassword");
		System.out.println("username : "+ username);
		System.out.println("userpassword : "+ userpassword);
		
		UserDao userDao = UserDao.getInstance();
		UserRequestDto user = new UserRequestDto(username,userpassword);
		
		boolean result = userDao.createUser(user);
		System.out.println(result);
		
		UserResponseDto responseUser = userDao.findByUsername(username);
		System.out.println("responseUser : "+responseUser);
		
		response.sendRedirect("mypage.jsp");
	%>
</body>
</html>