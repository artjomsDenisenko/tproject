<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie title</title>
<%@ include file="tag/header.jsp"%>
</head>
<body>
	${errorMessage}</br>
	${message}
	<%@ include file="tag/nav.jsp"%>	
	<form:form method="POST" action="/insertMovie" modelAttribute="movie">
		<table>
			<tr>
				<td><form:label path="name">Name</form:label></td>
				<td><form:input path="name" title="test1" alt="test2"/></td>
			</tr>
			<tr>
				<td><form:label path="id">Id0</form:label></td>
				<td><form:input path="id"/></td>
			</tr>
			<tr>
				<td><form:label path="id">Id</form:label></td>
				<td><form:input path="id"/></td>
			</tr>
			<tr>
				<td><form:label path="id">Id2</form:label></td>
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
	<a href='/'>Back to home</a>
	<br />
	<%@ include file="tag/footer.jsp"%>
	Git test1
</body>
</html>