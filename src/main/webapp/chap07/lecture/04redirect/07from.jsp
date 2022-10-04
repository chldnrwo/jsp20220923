<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% 
	String src ="seoul";
	String str = URLEncoder.encode(src, "utf-8");
	response.sendRedirect("07to.jsp?address="+str);
%>