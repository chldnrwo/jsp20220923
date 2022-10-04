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
	<h3>비교 연산자</h3>
	<p>${3 == 3 }</p>
	<p>${3 == 5 }</p>
	<p>${3 eq 3 }</p>
	<p>${3 eq 5 }</p>
	
	<hr>
	<p>${3 != 3 }</p>
	<p>${3 != 5 }</p>
	<p>${3 ne 3 }</p>
	<p>${3 ne 5 }</p>
	
	<hr>
	<p>${3 < 5 }</p>
	<p>${3 lt 5 }</p>
	<p>${3 > 5 }</p>
	<p>${3 gt 5 }</p>
	<p>${3 <= 5 }</p>
	<p>${3 le 5 }</p>
	<p>${3 >= 5 }</p>
	<p>${3 ge 5 }</p>
</body>
</html>