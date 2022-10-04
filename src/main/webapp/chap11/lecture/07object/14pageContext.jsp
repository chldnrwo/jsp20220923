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
	<h3>el pageContext 객체는 PageContext 타입</h3>
	<p>${pageContext.request }</p>
	<p>${pageContext.response }</p>
	<p>${pageContext.servletContext }</p>
	
	<hr>
	<p>${pageContext.request.characterEncoding }</p>
	<p>${pageContext.request.serverPort }</p>
	<p><%= request.getContextPath() %></p>
	<p>${pageContext.request.contextPath }</p>
	
	
	<hr>
	<p>${pageContext.request.localPort }</p>
	<p>${pageContext.request.localName }</p>
	
</body>
</html>











