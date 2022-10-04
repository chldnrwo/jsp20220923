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
	Map<String, String> map = new HashMap<>();
	map.put("key1", "marvel");
	map.put("my name", "hulk");
	map.put("1key", "thor");
	map.put("!@#", "panther");
	
	request.setAttribute("map1", map);
	pageContext.setAttribute("k", "key1");
	%>
	
	<p>${map1.key1 }</p> <%-- marvel --%>
	<p>${map1["key1"] }</p> <%-- marvel --%>
	<%-- <p>${map1.my name }</p> --%>
	<p>${map1["my name"] }</p> <%-- hulk --%>
	<%-- <p>${map1.1key }</p> --%>
	<p>${map1["1key"] }</p> <%-- thor --%>
	<p>${map1["!@#"] }</p> <%-- panther --%>
	
	<p>안나옴 : ${map1[key1] }</p>
	<p>k속성 있어서 나옴 : ${map1[k] }</p> <%-- marvel --%>
	
</body>
</html>













