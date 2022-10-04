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
	<h1>쿠키를 응답(response)에 담아서 보내기</h1>
	<%
		Cookie cookie = new Cookie("my-cookie1","my-value1");
		response.addCookie(cookie);
	%>
</body>
</html>