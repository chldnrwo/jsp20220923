<%@page import="java.util.ArrayList"%>
<%@page import="jsp20220923.chap07.Book"%>
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
	List<Book> list = new ArrayList<>();
	list.add(new Book("java",300));
	list.add(new Book("spring",500));
	list.add(new Book("jsp",200));
	
	request.setAttribute("books", list);
	
	%>
	
	<p>${books[0].title }</p>
	<p>${books[0].price }</p>
	<p>${books[1].title }</p>
	<p>${books[1].price }</p>
	<p>${books[2].title }</p>
	<p>${books[2].price }</p>
	
</body>
</html>