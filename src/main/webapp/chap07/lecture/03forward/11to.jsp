<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="jsp20220923.chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	List<Person> people = (List<Person>) request.getAttribute("list");
	%>
	
	<p>1번 : <%=people.get(0).getName() %></p>
	<p>2번 : <%=people.get(1).getName() %></p>
	<p>3번 : <%=people.get(2).getName() %></p>
	
	
	
</body>
</html>