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
	<h3>중첩 forEach 태그로 구구단 짝수단만 출력 (2,4,6,8)단만</h3>
	<c:forEach begin="2" end="9" step="2" var="x">
		<h3>구구단 ${x}단 출력</h3>
		<c:forEach begin="1" end="9" var="y">
			<p>${x} X ${y} = ${x*y}</p>
		</c:forEach>
	</c:forEach>
</body>
</html>