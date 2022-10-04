<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
// session attribute 추가하기
List<String> list= List.of("obama","trump");
session.setAttribute("names", list);
response.sendRedirect("10to.jsp");
%>