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
	<form action="13paramValues-to.jsp" method="post">
		날짜 : <input type="text" name="date" value="9/30"> <br>
		애플 제품 : <br>
		
		<!-- input[type=checkbox][name=heros]*5 -->
		아이폰 <input type="checkbox" name="prod" value="IPhone">
		에어팟 <input type="checkbox" name="prod" value="Airpot">
		아이패드 <input type="checkbox" name="prod" value="IPad">
		맥북 <input type="checkbox" name="prod" value="MacBook">
		애플워치 <input type="checkbox" name="prod" value="Applewatch">
		
		<br>
		
		<input type="submit" value="전송">
	
	</form>
</body>
</html>