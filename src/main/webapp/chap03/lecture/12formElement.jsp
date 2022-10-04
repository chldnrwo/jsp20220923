<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>form element</h1>
<%-- form 요소의 액션 attr : form 요소내의 인풋값들을 어디로 보내야할지 정해줌 --%>
<form action="12formElement.jsp">	
	<%-- text input field --%>
	<%-- name name attr : 쿼리스트링을 완성할 때 사용될 파라미터 이름 --%>
	<input type="test", name="coffee" />
	<%-- submit button --%>
	<input type="submit" />
</form>

<hr />

<%
String val1 = request.getParameter("coffee");
%>

coffee : <%= val1 %>
</body>
</html>