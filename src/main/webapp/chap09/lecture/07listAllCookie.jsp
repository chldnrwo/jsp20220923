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
	<h1>모든 쿠키 보기</h1>
	
	<ul>
		<%
		Cookie[] cookies = request.getCookies();
		
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				out.print("<li>");
				out.print(cookie.getName() + ":");
				out.print(cookie.getValue());
				out.print("</li>");
			}
		}
		%>
	</ul>
</body>
</html>












