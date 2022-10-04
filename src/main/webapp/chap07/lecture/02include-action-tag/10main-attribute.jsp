<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
List<String> list = List.of("ironman", "captain", "panther", "widow");
Map<String, String> map = Map.of("jisu", "bp", "v", "bts");

request.setAttribute("list1", list);
request.setAttribute("map1", map);
%>
<div>
	<jsp:include page="10sub-attribute.jsp"></jsp:include>
</div>

<h3>el 사용</h3>
<div>
	<jsp:include page="10sub-el.jsp"></jsp:include>
</div>
</body>
</html>











