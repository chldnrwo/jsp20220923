<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="jsp20220923.chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	List<Person> people= List.of(
			new Person("biden", 70, true), 
			new Person("trump", 60, true), 
			new Person("obama", 65, true));
	request.setAttribute("list", people);
	
%>

<jsp:forward page="11to.jsp" />