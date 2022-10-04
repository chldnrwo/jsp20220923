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
	<p>이름 : ${param.n }</p>
	<p>영웅들 : ${param.heros }</p>
	
	<hr>
	<p>이름 : ${param.n }</p>
	<p>영웅 : ${paramValues.heros[0] }</p>
	<p>영웅 : ${paramValues.heros[1] }</p>
	<p>영웅 : ${paramValues.heros[2] }</p>
	<p>영웅 : ${paramValues.heros[3] }</p>
	<p>영웅 : ${paramValues.heros[4] }</p>
</body>
</html>