<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- directive : 책 53 --%>
<%-- page, taglib, include --%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.stream.Stream" %>
<%@ page import="java.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더 목록 출력</title>
</head>
<body>
<%
	Iterator<String> headerEnum = request.getHeaderNames().asIterator();
	while(headerEnum.hasNext()){
		String headerName = (String)headerEnum.next();
		String headerValue = request.getHeader(headerName);
%>
<%= headerName %> = <%=headerValue %><br />
<%
	}
%>
</body>
</html>