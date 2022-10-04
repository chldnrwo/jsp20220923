<%@page import="java.util.ArrayList"%>
<%@page import="jsp20220923.chap07.Car"%>
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
	List<Car> list = new ArrayList<>();
	list.add(new Car("avante", 3000));
	list.add(new Car("genesis", 5000));
	request.setAttribute("cars", list);
	
	%>



	<p>${cars[0].company }</p>
	<p>${cars[0].model }</p>
	<p>${cars[0].price }</p>
	<p>${cars[1].company }</p>
	<p>${cars[1].model }</p>
	<p>${cars[1].price }</p>
	
</body>
</html>