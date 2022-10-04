<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>체크박스</h1>
	
	<form action="">
		<input type="text" name="name" value="captain"> <br>
		<input type="checkbox" name="coffee" value="americano"> 아메리카노
		<input type="checkbox" name="coffee" value="latte"> 라떼
		<input type="checkbox" name="coffee" value="capuchino"> 카푸치노
		<input type="checkbox" name="coffee" value="dolce"> 돌체라떼
		<input type="checkbox" name="coffee" value="espresso"> 에스프레소
		
		<br>
		
		<input type="submit" value="전송">
	</form>
	
	<hr>
	
	<%
	String name = request.getParameter("name");
	String[] coffees = request.getParameterValues("coffee");
	%>
	
	
	<%=name %>님이 선택한 커피는
	<%
	if(coffees != null){
		for(String coffee : coffees){
			out.print(coffee);
			out.print(" ");
		}
	}
	%>
</body>
</html>