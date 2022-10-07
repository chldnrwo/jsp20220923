<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="attr1"%>
<%@ tag dynamic-attributes="attrMap"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
	${attr1 }
</div>
<div>
	<c:forEach items="${attrMap}" var="attr">
		<p>${attr.key} : ${attr.value } </p>
	</c:forEach>
</div>