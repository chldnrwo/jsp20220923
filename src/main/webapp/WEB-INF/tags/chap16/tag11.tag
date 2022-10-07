<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ tag dynamic-attributes="attrMap"%> 

<%@ attribute name="menuItems" %>
<%@ attribute name="current" %>

<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <c:forEach items="${fn:split(menuItems, ',')}" var="i">
        	<li class="nav-item">
         		 <a class="nav-link
         			<c:if test="${current == i }">
					active
					</c:if>
         		 " href="${attrMap[i] }">${i}</a>
       		 </li>
        </c:forEach>
      </ul>
    </div>
  </div>
</nav>

<div>
	<c:forEach items="${attrMap}" var="attr">
		<a href="${pageContext.request.contextPath}${attr.value}">${attr.key}로 가기</a>
		<br>
	</c:forEach>
</div>



