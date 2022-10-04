<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String value = "자바";
	String encodedValue = URLEncoder.encode(value,"utf-8");
	response.sendRedirect("index.jsp?name="+encodedValue);
%>