<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, jsp20220923.chap07.*" %>
<%
	List<Book> list = (List<Book>) request.getAttribute("books");
%>

<p><%= list.get(0).getTitle() %> : <%= list.get(0).getPrice() %></p>
<p><%= list.get(1).getTitle() %> : <%= list.get(1).getPrice() %></p>