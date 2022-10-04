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
	<h1>쿠키 값 변경</h1>
	
	<%
	Cookie cookie = new Cookie("my-cookie1","my-value2");
	
	response.addCookie(cookie);
	%>
	<a href="02readCookie.jsp">쿠키 보러 가기</a>
</body>
</html>