<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, jsp20220923.chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Map<String, List<Person>> map = new HashMap<>();
List<Person> l1 = new ArrayList<>();
List<Person> l2 = new ArrayList<>();

Person p1 = new Person();
Person p2 = new Person();
Person p3 = new Person();
Person p4 = new Person();

l1.add(p1);
l1.add(p2);

l2.add(p3);
l2.add(p4);

map.put("people1", l1);
map.put("people2", l2);

request.setAttribute("people", map);

p1.setName("피노키오");
p1.setAge(800);

p2.setName("둘리");
p2.setAge(900);

p3.setName("까치");
p3.setAge(700);

p4.setName("엄지");
p4.setAge(600);

%>
<p>${people.people1[0].name }</p>
	<p>${people.people1[0].age }</p>
	<p>${people.people1[1].name }</p>
	<p>${people.people1[1].age }</p>
	<p>${people.people2[0].name }</p>
	<p>${people.people2[0].age }</p>
	<p>${people.people2[1].name }</p>
	<p>${people.people2[1].age }</p>
</body>
</html>












