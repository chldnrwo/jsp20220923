<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
List<String> list = (List<String>) session.getAttribute("names");
%>
<h1><%= list.get(0) %></h1>
<h1><%= list.get(1) %></h1>
</body>
</html>






