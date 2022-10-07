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
	<h3>jstl core forEach : 반복해서 실행/출력해야 하는 코드가 있을 때 사용</h3>
	
	<c:forEach begin="1" end="3">
		<h3>lorem.</h3>
	</c:forEach>
	
	<hr>
	
	<c:forEach begin="1" end="3" var="idx">
		<%-- var 속성 : begin-end사이의 각 값을 저장하는 el 변수 --%>
		<p>${idx}</p>
	</c:forEach>
</body>
</html>