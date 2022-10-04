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
	<h1>05to.jsp</h1>
	<h1>name : <%= request.getParameter("name") %></h1>
	<h1>age : <%= request.getParameter("age") %></h1>

</body>
</html>