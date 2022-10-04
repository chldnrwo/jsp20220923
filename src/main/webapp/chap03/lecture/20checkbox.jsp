<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 적절한 html 코드 작성 --%>
	<form action="">
		<input type="text" name="name"> <br>
		<input type="checkbox" name="heros" value="Ironman"> 아이언맨
		<input type="checkbox" name="heros" value="Captain"> 캡틴
		<input type="checkbox" name="heros" value="Blackwidow"> 블랙위도우
		<input type="checkbox" name="heros" value="Thor"> 토르
		<input type="checkbox" name="heros" value="Hulk"> 헐크
		
		<br>
		
		<input type="submit" value="전송">
	</form>
	<hr>
	<%
	String name = request.getParameter("name");
	String[] heros = request.getParameterValues("heros");
	
	if(heros!=null){
		out.print("<p>");
		out.print(name +"님이 좋아하는 영웅은 ");
		
		for(String hero : heros){
			out.print(hero+" ");
		}
		
		out.print("입니다");
		out.print("</p>");
	}
	
	
	%>
</body>
</html>