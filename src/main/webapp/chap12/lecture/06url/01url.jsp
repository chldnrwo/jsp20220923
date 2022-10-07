<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
<h3>url을 만들 때 사용하는 tag</h3>

<%--value 속성에 명시된 url 만들고 출력 --%>
<c:url value="02url.jsp">
</c:url>

<%-- request 파라미터(쿼리스트림) 생성시 유용 --%>
<c:url value="02url.jsp?name=donald&age=90"></c:url>
<c:url value="">
	<c:param name="name">donald</c:param>
	<c:param name="age">90</c:param>
</c:url> <br>
<c:url value="02url.jsp?name=홍길동"></c:url> <br>
<c:url value="02url.jsp">
	<c:param name="name">홍길동</c:param>
</c:url>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>