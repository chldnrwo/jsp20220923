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
	<h1>세션 종료</h1>
	<%
	session.invalidate();
	%>
	<a href="04aboutSession.jsp">세션정보보기</a>
</body>
</html>