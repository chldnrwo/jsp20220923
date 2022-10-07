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
	<%-- 구구단 출력 --%>
	<%-- request parameter "dan" --%>
	
	<c:if test="${param.dan != null }">
		<h3>구구단 ${param.dan }단 출력</h3>
	
		<c:forEach begin="1" end="9" var="x">
			<p>${param.dan} X ${x} = ${param.dan*x}</p>
		</c:forEach>
	</c:if>
	
	
</body>
</html>