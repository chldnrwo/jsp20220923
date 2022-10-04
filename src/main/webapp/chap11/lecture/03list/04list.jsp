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
	List<String> l = List.of("java", "spring", "css");
	request.setAttribute("langs", l);
	%>
	
	<%
	List<String> list = (List<String>) request.getAttribute("langs");
	for (int i = 0; i < list.size(); i++) {
		pageContext.setAttribute("idx", i);
	%>
		<p>${langs[idx] }</p>
	<%
	}
	%>

</body>
</html>









