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
	<form action="12paramValues-to.jsp" method="post">
		이름 : <input type="text" name="n"> <br>
		영웅들 : <br>
		
		<!-- input[type=checkbox][name=heros]*5 -->
		hulk <input type="checkbox" name="heros" value="hulk">
		thor <input type="checkbox" name="heros" value="thor">
		panther <input type="checkbox" name="heros" value="panther">
		ant <input type="checkbox" name="heros" value="ant">
		spider <input type="checkbox" name="heros" value="spider">
		
		<br>
		
		<input type="submit" value="전송">
	
	</form>
</body>
</html>












