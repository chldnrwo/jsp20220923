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
	<h3>jstl core if의 var 속성 : test 결과 저장하는 변수명(attribute 명)</h3>
	<h3>scope 속성으로 저장될 영역 지정 가능</h3>
	<c:if test="${empty param.name }" var="emptyName" scope="page">
		<p>이름을 입력해주세요.</p>
	</c:if>
	
	<c:if test="${not emptyName }">
		<p>${param.name }님 반갑습니다.</p>
	</c:if>
</body>
</html>