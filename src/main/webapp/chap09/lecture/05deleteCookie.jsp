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
	<h1>쿠키 지우기</h1>
	<%
	Cookie[] cookies = request.getCookies();
	if(cookies!=null){
		for(Cookie cookie : cookies){
			if(cookie.getName().equals("name")){
				Cookie r = new Cookie("name","");
				r.setMaxAge(0);
				response.addCookie(r);
			}
		}
	}
%>
</body>
</html>