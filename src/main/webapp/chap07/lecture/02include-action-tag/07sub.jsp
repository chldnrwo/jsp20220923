<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<%

	Object o = request.getAttribute("mylist");
	List<String> list = (List<String>) o;

	if (list != null) {
		for (String item : list) {
			out.println("<p>" + item + "</p>");
		}
	}
%>

