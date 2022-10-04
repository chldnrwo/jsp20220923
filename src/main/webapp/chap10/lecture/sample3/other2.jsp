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
			<h1>other2콘텐츠</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat sequi rerum sapiente excepturi consectetur velit ex officiis beatae animi qui vero id error autem amet ratione odio laudantium cupiditate corporis!</p>
			<p>Quis quae ad iure minima inventore delectus quam ratione quibusdam ipsam nulla numquam id modi fugit voluptate recusandae? Non accusamus optio inventore alias nam voluptatum quo quis totam odit odio.</p>
			<p>Temporibus libero in dolores ad fugiat a aliquam laudantium at fugit laborum eum magni vel id debitis officia asperiores illum. Iste aspernatur numquam eaque. Cumque aut eum molestias minus delectus.</p>
			<p>Ut accusantium libero exercitationem consequuntur maiores laudantium quia adipisci ad ratione minima cupiditate doloremque ullam harum quaerat commodi reprehenderit corporis porro ipsam praesentium explicabo. Ea natus non alias corporis amet?</p>
			<p>Sunt ullam saepe repellat eveniet in harum quae alias perspiciatis velit cupiditate omnis dolor iusto doloremque illo temporibus inventore facilis aliquam facere ratione porro. Voluptate delectus consequatur ad fugiat libero.</p>
		</div>
		<div class="ad">
			<jsp:include page="ad.jsp"></jsp:include>
		</div>
	</div>

</body>
</html>







