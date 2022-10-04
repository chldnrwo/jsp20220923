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
	<p>주문일자 : ${param.date }</p>
	<p>상품 : ${paramValues.prod[0] }</p>
	<p>상품 : ${paramValues.prod[1] }</p>
	<p>상품 : ${paramValues.prod[2] }</p>
	<p>상품 : ${paramValues.prod[3] }</p>
	<p>상품 : ${paramValues.prod[4] }</p>
</body>
</html>



