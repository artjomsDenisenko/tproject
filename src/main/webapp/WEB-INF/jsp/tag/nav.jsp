<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<div
	class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
	<h5 class="my-0 mr-md-auto font-weight-normal"><a href="/">Movie DB</a></h5>
	<h2 class="my-0 mr-md-auto font-weight-normal">
		Welcome back,
		<sec:authentication property="name" />
	</h2>
	<nav class="my-2 my-md-0 mr-md-3">
		<sec:authorize access="hasRole('ADMIN')">
			<a class="p-2 text-dark" href="/insertMovie">Add movie</a>
			<a class="p-2 text-dark" href="/deleteMovie">Delete movie</a>
		</sec:authorize>
		<a class="p-2 text-dark" href="/findMovie">Find movie</a>

		<sec:authorize access="!isAuthenticated()">
			<a class="p-2 text-dark" href="/login">Login</a>
		</sec:authorize>
		<sec:authorize access="isAuthenticated()">
			<a class="p-2 text-dark" href="/logout">Logout</a>
		</sec:authorize>
	</nav>
</div>