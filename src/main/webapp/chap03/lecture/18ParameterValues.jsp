<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1></h1>
	<!-- form>(input[name="scores"]+br)*3+input:s -->
	<form action="">
		<input type="text" name="scores" value="100">
		<br>
		<input type="text" name="scores" value="90">
		<br>
		<input type="text" name="scores" value="80">
		<br>
		<input type="submit" value="평균구하기">
	</form>
	
	<hr>
	<%
	String[] scores2 = request.getParameterValues("scores");
	
	if(scores2 != null){
		Integer a = Integer.valueOf(scores2[0]);
		Integer b = Integer.valueOf(scores2[1]);
		Integer c = Integer.valueOf(scores2[2]);
		Integer d = Integer.valueOf(scores2.length);
		double avg = (a+b+c)/d;
	%>	
		<p>평균 : <%= avg%>입니다</p>
	<% 
	}
	%>
	
	<%
	String[] scores = request.getParameterValues("scores");
	
	if (scores != null) {
		Integer sum = 0;
		for (String score : scores) {
			sum += Integer.valueOf(score);
			
			out.print("<p>");
			out.print("점수 : " + score);
			out.print("</p>");
		}
		
		double avg = sum / 3.0;
	%>
		<p>평균 : <%= avg %>입니다.</p>
	<%
	}
	%>
</body>
</html>