<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>스크립트릿</h1>
	<%
		out.print("<ul>");
		for(int i=1;i<6;i++){
			out.print("<li>");
			out.print(i);
			out.print("</li>");
		}
		out.print("</ul>");
	%>
	
	<hr />
	
	<ul>
		<li>1</li>
		<li>2</li>
		<li>3</li>
		<li>4</li>
		<li>5</li>
	</ul>
</body>
</html>