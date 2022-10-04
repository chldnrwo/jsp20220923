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
	<h1>getAttribute--->e1)(Expression Languager)</h1>
	<%
	request.setAttribute("myattr1", "myval1");
	
	%>
	
	<hr>
	<%
	Object o = request.getAttribute("myattr1");
	String s = (String)o;
	%>
	<p><%= s%></p>
	<p>${myattr1 }</p>
</body>
</html>