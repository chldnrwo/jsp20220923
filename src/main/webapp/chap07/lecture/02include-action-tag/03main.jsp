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
	<div>
		메인 컨텐츠
	</div>
	<%-- include tag 내에 작성 --%>
	<%-- name=value 쌍의 파라미터가 request에 포함됨 --%>
	<jsp:include page="03sub.jsp">
		<jsp:param value="30" name="age"/>
	</jsp:include>
</body>
</html>












