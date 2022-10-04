<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로딩시 선택된 상태로 출력</h1>
	<%-- 라디오버튼, 체크박스 요소에 checked속성이 있으면 로딩시 선택된 상태 --%>
	<form action="">
		<input type="checkbox" name="food" value="pizza" checked>
		<input type="checkbox" name="food" value="bibimbab">
		<input type="checkbox" name="food" value="kimchi" checked>
		<input type="checkbox" name="food" value="burger">
		
		<br>
		
		<input type="radio" name="loc" value="home" checked>
		<input type="radio" name="loc" value="work" >
		<input type="radio" name="loc" value="other" >
		
		<input type="submit" value="전송">
	</form>
</body>
</html>