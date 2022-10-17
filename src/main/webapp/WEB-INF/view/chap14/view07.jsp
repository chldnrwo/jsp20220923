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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col">
						
			
				<h1>고객 목록</h1>
				<c:if test="${not empty sessionScope.message }">
					<div class="alert alert-success alert-dismissible fade show">
						${sessionScope.message }
						<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					</div>
					<c:remove var="message" scope="session"/>
				</c:if>
				<a href="${pageContext.request.contextPath }/Servlet28">새 고객 등록하기</a>
				
				
				<div class="row">
					<div class="col-4">
						<form action="" class="">
						
							<div class="input-group mb-3">
								<input class="form-control" type="text" name="keyword" value="${param.keyword }" placeholder="이름">
								<!-- <input class="btn btn-outline-secondary" type="submit" value="이름검색"> -->
								<button class="btn btn-outline-secondary">
									<i class="fa-solid fa-magnifying-glass"></i>
								</button>
							</div>
							
							
						</form>
					
					</div>
				</div>
				
				<table class="table">
					<thead>
						<tr>
							<th>ID</th>
							<th>이름</th>
							<th>별칭</th>
							<th>주소</th>
							<th>도시</th>
							<th>나라</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${customers }" var="customer">
							<tr>
								<td>${customer.id }</td>
								<td>
									<c:url value="/Servlet30" var="updateUrl">
										<c:param name="id" value="${customer.id }" />
									</c:url>
								
									<a href="${updateUrl }">
										${customer.name }
									</a>
								
								
								</td>
								<td>${customer.contactName }</td>
								<td>${customer.address }</td>
								<td>${customer.city }</td>
								<td>${customer.country }</td>
							</tr>
						
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>








