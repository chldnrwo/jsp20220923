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
	<h3>jstl core if : 조건이 true일 때 태그 내의 코드 실행(출력)</h3>
	
	<c:if test="true">
	<h1>코드 출력됨?</h1>
	</c:if>
	
	<c:if test="false">
	<h1>코드 출력안됨</h1>
	</c:if>
</body>
</html>