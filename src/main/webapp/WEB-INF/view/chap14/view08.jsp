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
	<h1>고객 정보 보기</h1>
	
	<form action="" method="get">
		고객ID <input type="text" name="id"> 
		<input type="submit" value="조회">
	</form>
	
	<c:if test="${empty customer}">
		<h3>고객ID를 조회해주세요.</h3>
	</c:if>
	
	<c:if test="${not empty customer }">
		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>고객명</th>
					<th>주소</th>
					<th>도시</th>
					<th>국가</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${customer }" var="c">
					<tr>
						<td>
							${c.id }
						</td>
						<td>
							${c.name }
						</td>
						<td>
							${c.address }
						</td>
						<td>
							${c.city }
						</td>
						<td>
							${c.country }
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>