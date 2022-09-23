<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
private void printSum(int to, JspWriter out) throws Exception{
	int sum = 0;
	for(int i=0;i<=to;i++){
		sum+=i;
	}
	
	out.print(sum);
}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>선언부 활용</h1>
	
	<h1>1부터 100까지의 합 : <% printSum(100,out); %></h1>
	
	<h1>1부터 1000까지의 합 : <% printSum(1000,out); %></h1>

</body>
</html>