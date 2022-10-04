<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jsp20220923.chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Book book1 = new Book("java", 3000);
		Book book2 = new Book("html", 2000);
		
		request.setAttribute("b1", book1);
		request.setAttribute("b2", book2);
	%>
	
	<div>
		<h3>java 코드 포함</h3>
		<jsp:include page="11sub.jsp"></jsp:include>
	</div>

	<div>
		<h3>el만 사용</h3>
		<jsp:include page="11sub-el.jsp"></jsp:include>
	</div>

</body>
</html>





