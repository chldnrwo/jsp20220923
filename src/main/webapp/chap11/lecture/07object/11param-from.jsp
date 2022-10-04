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
	<form action="11param-to.jsp">
		이름 : <input type="text" name="name" value="captain"> <br>
		<!-- select[multiple]>option*5 -->
		음식 : 
		<select name="foods" id="" multiple="">
			<option value="cake">cake</option>
			<option value="coffee">coffee</option>
			<option value="milk">milk</option>
			<option value="pizza">pizza</option>
			<option value="burger">burger</option>
		</select>
		<br>
		<input type="submit" value="전송">
		
	</form>
</body>
</html>









