<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<% 
	request.setAttribute("num1", 3);
	request.setAttribute("num2", 6);
%>
<jsp:forward page="07to.jsp"/>