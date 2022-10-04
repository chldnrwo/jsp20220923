<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
// request attribute , session attribute
request.setAttribute("name1", "jimin");
// session attribute
// session type : HttpSession
session.setAttribute("name2", "v");
response.sendRedirect("08to-attribute.jsp");

%>