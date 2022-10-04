<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>textarea : 큰 용량의 텍스트 작성 가능</h1>
	
	<form action="">
	<textarea name="text1"></textarea>
	
	<br>
	<input type="submit" value="전송">
	</form>
	
	<hr>
	<%
	String text1 = request.getParameter("text1"); 
	%>
	<p><%= text1%></p>
</body>
</html>