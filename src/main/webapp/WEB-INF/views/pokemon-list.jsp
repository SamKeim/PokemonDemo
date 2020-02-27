<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Pokemon</title>
</head>
<body>
	<%@ include file="partials/header.jsp" %>

	<main>
		<section class="jumbotron">
			<h2 class="display-4">List of Pokemon</h2>
		</section>
		<section class="container">
			<table class="table table-striped">
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Level</th>
				</tr>
				<c:forEach var="poke" items="${pokemons}">
					<tr>
						<td>${poke.id }</td>
						<td>${poke.name }</td>
						<td>${poke.level }</td>
					</tr>
				</c:forEach>
			</table>

			<a href="/pokemon/add" class="btn btn-success">Create a new
				Pokemon</a>
		</section>
	</main>
</body>
</html>