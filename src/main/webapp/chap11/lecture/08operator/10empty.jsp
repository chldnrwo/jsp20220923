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
	pageContext.setAttribute("attr1", "");
	pageContext.setAttribute("attr2", "java");
	%>
	
	<p>${not empty attr1 }</p>
	<p>${not empty attr2 }</p>
</body>
</html>