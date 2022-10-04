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
	<h1>context path</h1>
	
	<!-- <form action="/jsp20220923/chap03/lecture/44context-path.jsp"> -->
	<form action="<%= request.getContextPath() %>/chap03/lecture/44context-path.jsp">
		<input type="text" name="address">
		<input type="submit" value="전송">
	</form>
	
	<%=request.getParameter("address") %>
</body>
</html>