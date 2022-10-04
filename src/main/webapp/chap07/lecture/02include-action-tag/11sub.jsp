<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jsp20220923.chap07.*" %>

<%
	Book o1 = (Book) request.getAttribute("b1");
	Book o2 = (Book) request.getAttribute("b2");
%>

<p>
<%= o1.getTitle() %> : <%= o1.getPrice()%>
</p>

<p>
<%= o2.getTitle() %> : <%= o2.getPrice()%>
</p>



