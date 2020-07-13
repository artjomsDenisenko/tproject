<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie title</title>
<%@ include file="tag/header.jsp"%>
</head>
<body>
	<%@ include file="tag/nav.jsp"%>

	<div class="container">
		<div class="row">
			<div class="card-deck mb-3 text-center">
				<c:forEach items="${movies}" var="item">
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<svg class="bd-placeholder-img card-img-top" width="100%"
								height="225" xmlns="http://www.w3.org/2000/svg"
								preserveAspectRatio="xMidYMid slice" focusable="false"
								role="img" aria-label="Placeholder: Thumbnail">
								<title>${item.id}</title><rect width="100%" height="100%"
									fill="#55595c"></rect>
								<text x="50%" y="50%" fill="#eceeef" dy=".3em">${item.name}</text></svg>
							<div class="card-body">
								<p class="card-text">This is a wider card with supporting
									text below as a natural lead-in to additional content. This
									content is a little bit longer.</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
									</div>
									<small class="text-muted"> 
										<c:forEach items="${item.genres}" var="genre">
											<c:out value="${genre.name}" />
										</c:forEach>
									</small>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<%@ include file="tag/footer.jsp"%>
</body>
</html>