<%@page import="jsp20220923.chap07.Book"%>
<%@page import="java.util.Map"%>
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
Map<String, Book> map = Map.of("book1", new Book("jsp", 500) , "book2", new Book("css", 500));
request.setAttribute("books", map);
%>

<%-- request에 attribute 추가해서 13sub.jsp에 null 출력되지 않도록 하기 --%>
<jsp:include page="13sub.jsp"></jsp:include>
<hr>
<jsp:include page="13sub-el.jsp"></jsp:include>
</body>
</html>