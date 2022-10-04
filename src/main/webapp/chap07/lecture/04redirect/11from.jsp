<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
// session attribute 추가하기
Map<String,String> map= Map.of("song1","2002","song2","shape of you");
session.setAttribute("names", map);
response.sendRedirect("11to.jsp");
%>