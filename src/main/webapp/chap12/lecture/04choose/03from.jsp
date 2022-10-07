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
	<h3>영화 추천 받기</h3>
	<form action="03to.jsp">
		장르 : <select name="genre" id="">
			<option value="comedy">comedy</option>
			<option value="family">family</option>
			<option value="action">action</option>
		</select>
		
		<input type="submit" value="추천 받기">
	</form>
</body>
</html>







