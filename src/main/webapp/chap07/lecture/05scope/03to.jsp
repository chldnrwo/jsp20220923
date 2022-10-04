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
	
	String s1 = (String) request.getAttribute("attr1");
	String s2 = (String) session.getAttribute("attr1");
	String s3 = (String) application.getAttribute("attr1");
	
	%>
	
	<p><%= s1 %></p> <%-- null 아닌 값 --%>
	<p><%= s2 %></p> <%-- null 아닌 값 --%>
	<p><%= s3 %></p> <%-- null 아닌 값 --%>

</body>
</html>







