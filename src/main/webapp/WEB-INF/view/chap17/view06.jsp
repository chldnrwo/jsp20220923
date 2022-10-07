<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<h3>책 등록하기</h3>
	<form action="" method="post">
		제목 : <input type="text" name="title"> <br>
		가격 : <input type="number" name="price"> <br>
		<input type="submit" value="등록">
	</form>
	
	<div>
		${message }
	</div>
	
	<hr>
	
	<h3>책 목록</h3>
	<table class="table">
		<thead>
			<tr>
				<th>#</th>
				<th>제목</th>
				<th>가격</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${bookList }" var="book" varStatus="status">
				<tr>
					<td>${status.count }</td>
					<td>${book.title }</td>
					<td>${book.price }</td>
				</tr>
			
			</c:forEach>
		</tbody>
	</table>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>










