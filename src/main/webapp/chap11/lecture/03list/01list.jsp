<%@page import="java.util.List"%>
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
	List<String> list = List.of("java","css","spring");
	request.setAttribute("attr1", list);
	%>

	<p>${attr1[0] }</p>
	<p>${attr1[1] }</p>
	<p>${attr1[2] }</p>
</body>
</html>