<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 선언부를 작성한다면 맨 위에 -->
    <%! 
	private void method1(){
		System.out.println("선언부에 작성된 메소드");
	}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>선언부로 메소드 작성 가능</h1>
	
	<%
	method1();
	%>
</body>
</html>