<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
	request.setAttribute("song", "dynamite");
%>
<jsp:forward page="06to-attribute.jsp"/>