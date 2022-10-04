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
	<h1>01from.jsp</h1>
	
	<%-- 
	forward : 다른 servlet(jsp)로 요청 변경 
	그래서, 다른 servlet(jsp)가 최종응답하게 됨
	--%>
	
	<jsp:forward page="01to.jsp"></jsp:forward>
</body>
</html>