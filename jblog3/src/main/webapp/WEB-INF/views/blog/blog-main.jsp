<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JBlog</title>
<Link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jblog.css">
</head>
<body>
	<div id="container">
		
		<c:import url="/WEB-INF/views/include/blog-header.jsp"/>
		
		<div id="wrapper">
			<div id="content">
				<div class="blog-content">
					<h4>${postVo.title }</h4>
					<p>
						${postVo.contents }
					<p>
				</div>
				<ul class="blog-list">
					<c:forEach items='${postList }' var = "post" varStatus='status'>			
						<li><a href="${pageContext.request.contextPath }/${blogVo.id }/${post.categoryNo }/${post.postNo }">${post.title }</a> <span>${post.regDate }</span></li>
					</c:forEach>
				</ul>
			</div>
		</div>

		<div id="extra">
			<div class="blog-logo">
				<c:choose>
					<c:when test='${empty blogVo.logo}'>
						<td><img
							src="${pageContext.request.contextPath}/assets/images/spring-logo.jpg"></td>
					</c:when>
					<c:otherwise>
						<td><img
							src="${pageContext.request.contextPath}${blogVo.logo }"></td>
					</c:otherwise>
				</c:choose>
			</div>
		</div>

		<div id="navigation">
			<h2>카테고리</h2>
			<ul>
				<c:forEach items='${categoryList }' var = "category" varStatus='status'>
					<li><a href="${pageContext.request.contextPath}/${blogVo.id }/${category.no }">${category.name }</a></li>
				</c:forEach>
			</ul>
		</div>
		
		<c:import url="/WEB-INF/views/include/blog-footer.jsp"/>
		
	</div>
</body>
</html>