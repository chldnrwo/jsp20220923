<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/chap16"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<my:tag14 attr1="abc">
		<h3>Lorem ipsum dolor.</h3>
	</my:tag14>
	
	<hr>
	
	<my:tag14>
		<jsp:attribute name="attr1">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae velit culpa voluptates quibusdam praesentium quam cupiditate nostrum odio reiciendis iusto. Pariatur cumque a amet incidunt natus labore blanditiis in molestias?</jsp:attribute>
		<jsp:body>
			<h3>Lorem ipsum dolor.</h3>
		</jsp:body>
	</my:tag14>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>