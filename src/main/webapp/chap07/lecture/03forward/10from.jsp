<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jsp20220923.chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	Person p = new Person();
	p.setName("biden");
	p.setAge(70);
	p.setAlive(true);
	
	request.setAttribute("person1", p);
%>

<jsp:forward page="10to.jsp" />