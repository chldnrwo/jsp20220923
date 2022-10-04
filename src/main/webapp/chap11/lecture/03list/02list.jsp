<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	java.util.List<String> l= java.util.List.of("iron","cap","widow");
	request.setAttribute("attr1", l);
	request.setAttribute("attr2", 0);
	request.setAttribute("a", 1);
	request.setAttribute("z", 2);
	request.setAttribute("abc", "2");
	request.setAttribute("def", "two");
	%>
	
	<p>${attr1[0] }</p>
	<p>${attr1[attr2] }</p>
	<p>${attr1[1] }</p>
	<p>${attr1[a] }</p>
	<p>${attr1[z] }</p>
	<p>${attr1[abc] }</p>
	<%-- <p>${attr1[def] }</p> --%>
</body>
</html>