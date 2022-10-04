<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jsp20220923.chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>el을 사용해서 javaBeans의 프로퍼티를 사용할 수 있다.</h3>
	
	<%
	Book b1 = new Book("java", 500);
	request.setAttribute("book1", b1);
	%>
	
	<p>${book1 }</p>
	<p>${book1.title }</p>
	<p>${book1.price }</p>
</body>
</html>
















