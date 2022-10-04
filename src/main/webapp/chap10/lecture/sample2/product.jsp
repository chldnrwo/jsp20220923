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
	<h1>상품</h1>
	<form action="cart.jsp" method="post">
		상품명 : <input type="text" name="product" value="노트북">
		<input type="submit" value="장바구니에 추가">
	</form>
	
</body>
</html>










