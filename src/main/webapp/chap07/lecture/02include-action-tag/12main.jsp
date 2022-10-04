<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
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
List<Book> list = List.of(new Book("spring", 100), new Book("sql", 500));
request.setAttribute("books", list);
%>
<h1>12 main</h1>
<jsp:include page="12sub.jsp"></jsp:include>
<hr>
<jsp:include page="12sub-el.jsp"></jsp:include>
</body>
</html>

















