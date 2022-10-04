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
	<h1>post방식 전송</h1>
	<form action="" method="post">
		이름 : <input type="text" name="name"> <br>
		이메일 : <input type="email" name="email"> <br>
		암호 : <input type="password" name="password"> <br>
		주소 : <input type="text" name="address"> <br>
		<input type="submit" value="가입">
	</form>
	
	<hr>
	<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String pw = request.getParameter("password");
	String address = request.getParameter("address");
	
	System.out.println(pw);
	%>
	
	<p>이름 : <%= name %></p>
	<p>이메일 : <%= email %></p>
	<p>암호 : 표시되지 않음</p>
	<p>주소 : <%= address %></p>
	
	
</body>
</html>
