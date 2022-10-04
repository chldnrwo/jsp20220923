<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.container {
		display: flex;
	}
	
	.main {
		width: 80%;
	}
	
	.ad {
		background-color : linen;
		width: 20%;
	}
</style>
</head>
<body>
	<div class="container">
		<div class="main">
			<h1>검색 페이지</h1>
			<form action="">
				<input type="text" name="q">
				<input type="submit" value="검색">
			</form>
			
			<%
			String q = request.getParameter("q");
			if (q != null && !q.isBlank()) {
			%>
				<h3><%= q %>의 검색결과!!!</h3>
			<%
				// session에 검색 키워드 저장
				session.setAttribute("keyword", q);
			}
			%>
		</div>
		
		
		<div class="ad">
			<jsp:include page="ad.jsp"></jsp:include>
		</div>
	</div>
	
	
</body>
</html>













