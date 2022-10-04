<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String memberId = (String) session.getAttribute("MEMBERID");
	boolean login = memberId==null? false : true;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인여부 검사</title>
</head>
<body>

<%
	if(login){
%>
아이디 "<%=memberId %>"로 로그인 한 상태

<br>
<a href="sessionLogout">로그아웃하기</a>
<%
	}else{
%>
로그인하지 않은 상태

<br>
<a href="sessionLoginForm">처음 화면으로</a>
<%
	}
%>


</body>
</html>