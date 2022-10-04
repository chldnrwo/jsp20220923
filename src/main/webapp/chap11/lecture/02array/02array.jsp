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
	String[] arr1 = {"song1","song2","song3","song4"};
	request.setAttribute("song", arr1);
	%>
	
	
	<hr>
	<p>${song[0] }</p>
	<p>${song[1] }</p>
	<p>${song[2] }</p>
	
	
</body>
</html>