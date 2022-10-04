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
	<h1>42번 파일</h1>
	<%--
	http://localhost:8080/jsp20220923/chap03/lecture/42absolute-path.jsp
	프로토콜://host:prot/path?querystring
	
	 --%>
	 <h3>절대경로 : / 로 시작, port 번호 다음</h3>
	 <form action="/jsp20220923/chap03/lecture/43absolute-path.jsp">
	 	<input type="text" name="age"> <br>
	 	<input type="submit" value="전송">
	 </form>
</body>
</html>