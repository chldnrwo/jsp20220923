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
Map<String, Car> map = new HashMap();
request.setAttribute("cars", map);

Car c1 = new Car();
c1.setModel("tesla");
c1.setPrice(300);

Car c2 = new Car();
c2.setModel("sonata");
c2.setPrice(200);

map.put("car1", c1);
map.put("car2", c2);

%>

<p>${cars.car1.model }</p>
<p>${cars.car1.price }</p>
<p>${cars.car1.company }</p>
<p>${cars.car2.model }</p>
<p>${cars.car2.price }</p>
<p>${cars.car2.company }</p>

<hr>

<p>${cars["car1"].model }</p>
<p>${cars["car1"].price }</p>
<p>${cars["car1"].company }</p>
<p>${cars["car2"].model }</p>
<p>${cars["car2"].price }</p>
<p>${cars["car2"].company }</p>

<hr>

<p>${cars["car1"]["model"] }</p>
<p>${cars["car1"]["price"] }</p>
<p>${cars["car1"]["company"] }</p>
<p>${cars["car2"]["model"]}</p>
<p>${cars["car2"]["price"]}</p>
<p>${cars["car2"]["company"]  }</p>
</body>
</html>











