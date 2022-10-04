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
	<h1>37번 파일</h1>
	<%--
	http://localhost:8080/jsp20220923/chap03/lecture/35action.jsp
	http://localhost:8080/jsp20220923/chap03/lecture/36action.jsp
	http://localhost:8080/jsp20220923/chap03/lecture/sub1/37action.jsp
	http://localhost:8080/jsp20220923/chap03/38action.jsp
	http://localhost:8080/jsp20220923/39action.jsp
	http://localhost:8080/jsp20220923/chap03/book/40action.jsp
	 --%>
	 <form action="../book/40action">
	 	<input type="text" name="name"> <br>
		<input type="text" name="address"> <br>
		<input type="submit" value="전송">
	 </form>
</body>
</html>