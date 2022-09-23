<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>request 기본 객체</h1>
	<%
	System.out.println(request);
	%>
	<%= request %>
	
	<hr />
	<p>Method <%= request.getMethod() %></p>
	<p>URI <%= request.getRequestURI() %></p>
	
	<hr />
	<h1>헤더 정보들</h1>
	<p>accept : <%= request.getHeader("Accept") %></p>
	<p>accept encoding : <%= request.getHeader("Accept-Encoding") %></p>
</body>
</html>