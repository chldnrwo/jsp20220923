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
	<h1>나이 : <%= request.getParameter("age") %></h1>
	<h1>이메일 : <%= request.getParameter("email") %></h1>
</body>
</html>