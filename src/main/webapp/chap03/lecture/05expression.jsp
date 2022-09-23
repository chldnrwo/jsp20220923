<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>1부터 100까지의 합</h1>
	
	<%
	int sum=0;
	
	for(int i=1;i<=100;i++){
		sum+=i;
	}
	%>
	
	<h2>1부터 100까지의 합은 <%= sum %></h2>
</body>
</html>