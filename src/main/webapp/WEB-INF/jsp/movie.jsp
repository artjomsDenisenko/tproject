<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Movie</title>
<%@ include file="tag/header.jsp" %>  
</head>
<body>
	<%@ include file="tag/nav.jsp" %>  
	${errorMessage}</br>
	${message}

	
	<form:form method="POST" action="/insertMovie" modelAttribute="movie">
		<table>
			<tr>
				<td><form:label path="name">Name</form:label></td>
				<td><form:input path="name" title="test1" alt="test2"/></td>
			</tr>
			<tr>
				<td><form:label path="id">Id</form:label></td>
				<td><form:input path="id"/></td>
			</tr>
			<tr>
				<td><form:label path="genres">Genres</form:label></td>
				<form:select path="genres" multiple="true">
					<form:options items="${genresList}" itemValue="id" itemLabel="name"/>
				</form:select>
			</tr>
			
			<tr>
				<td><input type="submit" value="Submit"/></td>
			</tr>
		</table>
	
	</form:form>
	<%@ include file="tag/footer.jsp" %>  
</body>
</html>