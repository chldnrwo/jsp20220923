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
	<h1>setPath로 요청시 cookie를 포함할 경로 지정해 주기</h1>
	<%
	Cookie cookie = new Cookie("my-cookie3","my-value3");
	cookie.setPath("/");
	
	response.addCookie(cookie);
	%>
</body>
</html>