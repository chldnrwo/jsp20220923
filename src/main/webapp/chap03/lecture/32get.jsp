<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전송방식(method) : get</h1>
	<p>쿼리스트링으로 주소에 붙어서 전송됨</p>
	<p>길이의 제한이 있음</p>
	<p>주소란에 노출됨</p>
	
	<form action="" method="get">
		검색1: <input type="text" name="q1"> <br>
		검색2: <input type="text" name="q2"> <br>
		
		<input type="submit" value="전송">
	</form>
</body>	
</html>