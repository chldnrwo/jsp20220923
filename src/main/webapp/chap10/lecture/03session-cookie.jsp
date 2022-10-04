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
	<h1>세션을 유지하는 방법</h1>
	<p>
	1.첫 요청에 대한 응답에 cookie를 포함해서 응답함
	2.두번째 요청부터 첫 응답에서 받은 cookie를 들고감
	3.첫 응답에 포함된 cookie를 다음 요청에서 들고오면 같은 브라우저로 판단함
	</p>
</body>
</html>