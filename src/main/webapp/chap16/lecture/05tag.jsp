<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/chap16" %>
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
	<my:tag6 attr1="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus cum necessitatibus saepe sapiente. Quasi autem optio pariatur corporis iure repudiandae nam voluptas minima consequuntur at mollitia recusandae natus dolor quam!"/>
	
	<my:tag6 attr1="korea" attr2="seoul" attr3="busan" />
	
	<my:tag6>
		<jsp:attribute name="attr1">
			Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae perferendis nam assumenda quo et repudiandae in voluptate neque cupiditate earum atque vero sint. Ex dicta cupiditate voluptate facere consequatur recusandae!
		</jsp:attribute>
	</my:tag6>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>











