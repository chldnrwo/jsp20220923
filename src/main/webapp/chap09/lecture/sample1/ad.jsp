<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
	Cookie[] cookies = request.getCookies();
	String keyword = "일반";	

	if(cookies!=null){
		for(Cookie cookie : cookies){
			if(cookie.getName().equals("k")){
				keyword = URLDecoder.decode(cookie.getValue(), "utf-8");
							
			}
		}
	}

	
%>

<h3><%= keyword %> 광고 입니다.</h3>