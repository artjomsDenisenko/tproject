<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="tag" uri="/WEB-INF/jsp/tag" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie list</title>
<%@ include file="tag/header.jsp" %>  
</head>
<body>
	<%@ include file="tag/nav.jsp" %>  
	${errorMessage}

	<div class="album py-5 bg-light">
		<div class="container">

			<div class="row">
				<c:forEach items="${movies}" var="item">

					<tag:movieThumbnail item="${item}" />

				</c:forEach>

			</div>
		</div>
	</div>
	
	<%@ include file="tag/footer.jsp" %>  
</body>
</html>