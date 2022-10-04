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
	<h3>세션 아이디 : <%= session.getId() %></h3>
	<h3>세션이 처음 만들어진 시간 : <%= session.getCreationTime() %></h3>
	<h3>세션을 마지막에 사용한 시간 : <%=session.getLastAccessedTime() %></h3>
	<h3>새로운 세션인지 : <%=session.isNew() %></h3>
	<h3>세션을 얼마나 유지해야 하는지(초) : <%=session.getMaxInactiveInterval() %></h3>
	
	<a href="05invalidate.jsp">세션 종료하기</a>
	
</body>
</html>