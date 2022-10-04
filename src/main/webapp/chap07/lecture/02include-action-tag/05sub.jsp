<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<div>
	SUB 컨텐츠
	<p>
		name : <%= request.getParameter("name") %>
	</p>
	<p>
		age : <%= request.getParameter("age") %>
	</p>
</div>