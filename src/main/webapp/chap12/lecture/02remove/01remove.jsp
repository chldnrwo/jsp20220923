<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>jstl core remove : attribute(el variable) 삭제할 때 사용</h3>
	<c:set var="attr1" value="val1"/>
	<p>${attr1 }</p>
	<c:remove var="attr1"/> <%--모든 영역의 attribute 삭제 --%>
	<p>${empty attr1 }</p>
	
	<%--scope 속성 : 특정 영역의 attribute만 삭제할 때 사용 --%>
	<c:remove var="attr1" scope="page"/>
	<c:remove var="attr1" scope="request"/>
	<c:remove var="attr1" scope="session"/>
	<c:remove var="attr1" scope="application"/>
</body>
</html>