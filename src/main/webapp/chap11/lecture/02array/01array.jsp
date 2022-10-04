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
	<h3>attribute의 값 타입이 배열일 때</h3>
	<%
	String[] arr1 = {"hulk","thor","ant","spider"};
	request.setAttribute("heros", arr1);
	%>
	
	<hr>
	<p>${heros} </p>
	<p>${heros[0]}</p>
	<p>${heros[1]}</p>
	<p>${heros[2]}</p>
	<p>${heros[3]}</p>
	<p>${heros[4]}</p> <%--출력안함 --%>
	
	
</body>
</html>