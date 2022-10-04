<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="jsp20220923.chap07.*" %>

<%
	Map<String, Book> map = (Map<String, Book>) request.getAttribute("books");
%>

<%-- 아래 html에서 null이 출력되지 않도록 main.jsp를 완성 --%>
<p><%= map.get("book1").getTitle() %> : <%= map.get("book1").getPrice() %></p>
<p><%= map.get("book2").getTitle() %> : <%= map.get("book2").getPrice() %></p>
