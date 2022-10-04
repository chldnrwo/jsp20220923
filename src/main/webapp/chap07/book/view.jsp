<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String code = request.getParameter("code");
	String viewPageURI = null;
	
	if(code.equals("A")){
		viewPageURI = "a.jsp";		
	}else if(code.equals("B")){
		viewPageURI = "b.jsp";		
	}else if(code.equals("C")){
		viewPageURI = "c.jsp";		
	}
%>
<jsp:forward page="<%=viewPageURI %>"/>