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
	<h3>나이별 추천 영화</h3>
	
	<c:choose>
		<c:when test="${param.age>20 }">
			<h4>타짜</h4>
		</c:when>
		<c:when test="${param.age>15 }">
			<h4>토르</h4>
		</c:when>
		<c:when test="${param.age>7 }">
			<h4>피노키오</h4>
		</c:when>
		<c:when test="${param.age>0 }">
			<h4>뽀로로</h4>
		</c:when>
		<c:otherwise>
			<h4>나이를 입력해주세요.</h4>
		</c:otherwise>
	</c:choose>
</body>
</html>