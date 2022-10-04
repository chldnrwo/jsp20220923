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
	<h1>이미 있는 쿠키만 변경 하기</h1>
	<%
	// request에서 쿠키 확인하고
	Cookie[] cookies = request.getCookies();
	
	if (cookies != null) {
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("my-cookie1")) {
				response.addCookie(new Cookie("my-cookie1", "my-cookie3"));
			}
		}
	}
	%>
	<a href="02readCookie.jsp">쿠키 보러 가기</a>
</body>
</html>









