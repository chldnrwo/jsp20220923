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
	<h3>choose, when, otherwise : 자바의 if, else if, else와 유사</h3>
	
	<c:choose>
		<c:when test="false">
		<%-- test가 true일 때 실행 출력
			여러 --%>
		<h3>출력됨 1?</h3>
		</c:when>
		<c:when test="false">
		<h3>출력됨2 ???</h3>
		</c:when>
		<c:when test="false">
		<h3>출력됨3 ???????</h3>
		</c:when>
		<c:otherwise>
		<h3>모두 false 면 출력</h3>
		</c:otherwise>
	</c:choose>
</body>
</html>