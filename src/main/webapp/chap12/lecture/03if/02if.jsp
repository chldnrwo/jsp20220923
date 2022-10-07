<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${not empty param.name }">
		<h1>${param.name }님 반갑습니다.</h1>
	</c:if>
	
	<c:if test="${empty param.name }">
		<h1>이름을 입력해주세요.</h1>
	</c:if>
</body>
</html>