<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	List<String> l1 = (List<String>) request.getAttribute("boardList");
	List<String> l2 = (List<String>) request.getAttribute("commentList");
%>

<h3>게시물</h3>
<p><%= l1.get(0) %></p>
<p><%= l1.get(1) %></p>
<p><%= l1.get(2) %></p>

<h3>댓글</h3>
<p><%= l2.get(0) %></p>
<p><%= l2.get(1) %></p>



