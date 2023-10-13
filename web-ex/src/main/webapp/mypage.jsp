<%@page import="user.UserDao"%>
<%@page import="user.UserResponseDto"%>
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
		String username =	request.getParameter("username");
		UserDao userDao = UserDao.getInstance();
		UserResponseDto responseUser = userDao.findByUsername(username);
		
	%>
	
	<h1><%= responseUser.getName() %>님 환영합니다.</h1>
	
	<h1><%= session.getAttribute("name") %>님 환영합니다.</h1>
	
</body>
</html>