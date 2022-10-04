<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>30일 유지되는 쿠키 만들기</h1>
	<a href="02readCookie.jsp">쿠키 읽기</a>
	<%
	Cookie cookie = new Cookie("my-cookie2","my-value2");
	cookie.setMaxAge(30*24*60*60);
	response.addCookie(cookie);
	%>
</body>
</html>