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
			<h1>other1 페이지 메인 컨텐츠</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid necessitatibus consequatur sapiente ipsa deleniti similique laborum repudiandae tenetur nisi cum quaerat ipsum inventore velit perferendis esse id a natus corporis.</p>
			<p>Autem doloremque recusandae totam reiciendis id animi deserunt sequi consectetur facere corporis adipisci porro commodi aspernatur facilis suscipit rem rerum tempora expedita consequuntur aperiam iusto quisquam iure excepturi harum vitae.</p>
			<p>Dicta alias quis fugit ipsum sit iure incidunt beatae ex at sed expedita blanditiis commodi veritatis exercitationem architecto non accusamus ipsam enim rerum repellat rem perspiciatis numquam minus nemo porro!</p>
			<p>Atque accusantium blanditiis consequuntur in ab numquam dolores temporibus corporis totam qui inventore unde vero ex reiciendis ea reprehenderit repellendus aut sunt veniam itaque culpa minima cumque minus ipsa deserunt!</p>
			<p>Blanditiis cum harum pariatur iste nesciunt distinctio unde officia quaerat laudantium expedita praesentium eaque ratione enim id omnis ad itaque eligendi asperiores fugiat reiciendis perspiciatis dicta nemo vitae voluptate iusto.</p>
		</div>
		<div class="ad">
			<jsp:include page="ad.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>







