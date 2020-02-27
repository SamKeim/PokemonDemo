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
<title>Trainer List</title>
</head>
<body>
	<%@ include file="partials/header.jsp" %>

	<main>
		<section class="jumbotron">
			<h2 class="display-4">Trainer List</h2>
		</section>
		<section class="container">

			<table class="table table-striped">
				<tr>
					<th>ID</th>
					<th>Name</th>
				</tr>
				<c:forEach var="trainer" items="${trainers}">
					<tr>
						<td><a href="/trainer/${trainer.id}" class="">${trainer.id}</a></td>
						<td>${trainer.username}</td>
					</tr>
				</c:forEach>
			</table>
		<a href="/trainer/add" class="btn btn-success">Create new Trainer</a>
		</section>
	</main>
</body>
</html>