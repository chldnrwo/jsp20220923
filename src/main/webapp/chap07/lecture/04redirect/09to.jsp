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
	<h1>09to.jsp</h1>
	<%
	Integer n1 = (Integer) session.getAttribute("num1");
	Integer n2 = (Integer) session.getAttribute("num2");
	%>
	<h3><%= n1 %> + <%= n2 %> = <%= n1 + n2 %></h3>

</body>
</html>






