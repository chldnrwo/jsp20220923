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
		width: 20%;
		background-color: linen;
	}
</style>
</head>
<body>
	<div class="container">
		<div class="main">
			<h1>Lorem ipsum dolor.</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam laboriosam velit dolor laborum nam. Minus nostrum id nihil ullam similique perspiciatis adipisci amet mollitia atque animi odit excepturi aspernatur aliquid!</p>
			<p>Cupiditate nulla exercitationem maxime perferendis totam facilis veritatis delectus ea sint necessitatibus mollitia optio nostrum quibusdam quod quidem quaerat dignissimos inventore unde tempore deleniti in quis obcaecati ex. Ut eius.</p>
			<p>Nulla consequuntur praesentium inventore officia enim perspiciatis eius non perferendis unde cumque qui dolores ut rerum iste odio quos fugiat tempore repellat molestias quidem quis rem delectus dolor optio maxime.</p>
			<p>Sed porro eligendi voluptatem mollitia quod ullam enim earum autem facilis similique recusandae magnam sapiente minima adipisci odio molestias nulla cumque incidunt. Quod vero quas aperiam non in mollitia iusto.</p>
			<p>Minima magnam recusandae animi accusamus atque ipsa culpa ut a cupiditate odit vitae illum id iste corporis expedita quam fuga commodi iure nostrum soluta incidunt sint numquam quis magni ducimus?</p>
			
		</div>
		<div class="ad">
		<jsp:include page="ad.jsp"></jsp:include>
		</div>
	</div>
	
</body>
</html>