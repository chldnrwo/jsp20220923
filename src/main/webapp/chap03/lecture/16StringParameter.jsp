<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>스트링 파라미터를 다른 타입으로 변경</h1>
	<!-- form>input+input:s -->
	<form action="">
		영어 : <input type="text" name="eng"><br>
		수학 : <input type="text" name="mat"><br>
		국어 : <input type="text" name="kor"><br>
		
		<%-- submit 버튼 value 속성 : 버튼에 표시되는 내용 --%>
		<input type="submit">
	</form>
	<%
	String eng = request.getParameter("eng");
	Integer numE = 0;
	if(eng!=null){
		numE =Integer.valueOf(eng);
	}
	String mat = request.getParameter("mat");
	Integer numM = 0;
	if(mat!=null){
		numM =Integer.valueOf(mat);
	}
	String kor = request.getParameter("kor");
	Integer numK = 0;
	if(kor!=null){
		numK =Integer.valueOf(kor);
	}
	%>
	
	<p>세 과목의 평균은 <%= (numE+numM+numK)/3 %>입니다.</p>
</body>
</html>