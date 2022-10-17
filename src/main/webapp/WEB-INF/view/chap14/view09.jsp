<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<h1>상품 보기</h1>
	
	<form action="" method="get">
		상품번호 <input type="text" name="id"> 
		<input type="submit" value="조회">
	</form>
	
	<c:if test="${empty products }">
		<h3>상품번호를 조회해주세요.</h3>
	</c:if>
	
	<c:if test="${not empty products }">
		<table class="table">
			<thead>
				<tr>
					<th>상품명</th>
					<th>가격</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${products }" var="product">
					<tr>
						<td>
							${product.name }
						</td>
						<td>
							${product.price }
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>