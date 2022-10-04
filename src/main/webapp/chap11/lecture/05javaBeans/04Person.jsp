<%@page import="jsp20220923.chap07.Person"%>
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
	<%
	Person p = new Person("ava", 500 , true);
	
	request.setAttribute("p", p);
	
	%>
	
	<p>${p.name }</p>
	<p>${p.age }</p>
	<p>${p.alive }</p>
</body>
</html>