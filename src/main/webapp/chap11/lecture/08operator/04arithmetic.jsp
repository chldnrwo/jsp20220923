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
	<p>${param.a + param.b }</p>
	<p>${param.x - param.y }</p>
	<p>${param.num1 /  param.num2 }</p>
	
	
	
</body>
</html>