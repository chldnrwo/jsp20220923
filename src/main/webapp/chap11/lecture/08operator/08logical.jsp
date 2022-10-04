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
	<h3>논리 연산자</h3>
	<h4>&&, and</h4>
	<p>${true && true }</p>
	<p>${true && false }</p>
	<p>${false && true }</p>
	<p>${false && false }</p>
	<p>${true and true }</p>
	<p>${true and false }</p>
	<p>${false and true }</p>
	<p>${false and false }</p>
	
	<hr>
	<h4>||, or</h4>
	<p>${true || true }</p>
	<p>${true || false }</p>
	<p>${false || true }</p>
	<p>${false || false }</p>
	<p>${true or true }</p>
	<p>${true or false }</p>
	<p>${false or true }</p>
	<p>${false or false }</p>
	
	<hr>
	<h4>!, not</h4>
	<p>${! true }</p>
	<p>${! false }</p>
	<p>${not true }</p>
	<p>${not false }</p>
</body>
</html>