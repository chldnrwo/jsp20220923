<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>


<%
request.setAttribute("num1", 99);
request.setAttribute("num2", 77);
request.setAttribute("num3", 99);
request.setAttribute("num4", 77);
request.setAttribute("n5", 99);
request.setAttribute("n6", 77);
request.setAttribute("n7", 99);
request.setAttribute("n8", 77);
request.setAttribute("num9", 99);
request.setAttribute("num10", 77);
%>
<jsp:forward page="02to.jsp" />