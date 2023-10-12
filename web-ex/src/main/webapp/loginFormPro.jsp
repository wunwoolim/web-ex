<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%-- JSP의 내장객체 
	out
	request 요청처리
	response 응답처리
	page
	pageCintext
	config
	session
	application
	exception
 --%>

<body>
	<h1>Pro</h1>
	<%
		request.setCharacterEncoding("UTF-8");
		String id =	request.getParameter("id");
		String password =	request.getParameter("password");
		System.out.println("id : "+ id);
		System.out.println("password : "+ password);
	%>
</body>
</html>