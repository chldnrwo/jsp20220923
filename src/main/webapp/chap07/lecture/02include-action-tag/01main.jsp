<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
include action tag :
	page 속성에 있는 페이지 호출 결과가 삽입
 --%>
	<jsp:include page="02navbar.jsp"></jsp:include>
	<div>
		main contents
	</div>
</body>
</html>