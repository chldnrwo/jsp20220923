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
	<h3>영화추천</h3>
	<p>
	<c:choose>
		<c:when test="${param.genre == 'comedy'}">
			<h4>토르</h4>
		</c:when>
		<c:when test="${param.genre=='family' }">
			<h4>피노키오</h4>
		</c:when>
		<c:when test="${param.genre=='action'}">
			<h4>노바디</h4>
		</c:when>
		<c:otherwise>
			장르를 comedy, family, action 중에 선택해주세요
		</c:otherwise>
	</c:choose>
	</p>
	
</body>
</html>