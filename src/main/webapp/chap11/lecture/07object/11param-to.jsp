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
	<p>이름 : ${param.name }</p>
	<p>음식 : ${param.foods }</p>
	
	<hr>
	<p>이름 : ${param.name }</p>
	<p>음식 : ${paramValues.foods[0] }</p>
	<p>음식 : ${paramValues.foods[1] }</p>
	<p>음식 : ${paramValues.foods[2] }</p>
	<p>음식 : ${paramValues.foods[3] }</p>
	<p>음식 : ${paramValues.foods[4] }</p>
	
</body>
</html>








