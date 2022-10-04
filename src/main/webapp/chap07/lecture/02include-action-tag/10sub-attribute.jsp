<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
	List<String> l1 = (List<String>) request.getAttribute("list1");
	Object o = request.getAttribute("map1");
	Map<String, String> m1 = (Map<String, String>) o;
%>

<h3>히어로</h3>
<p><%= l1.get(0) %></p>
<p><%= l1.get(1) %></p>
<p><%= l1.get(2) %></p>
<p><%= l1.get(3) %></p>

<h3>아이돌</h3>
<p><%= m1.get("jisu") %></p>
<p><%= m1.get("v") %></p>
