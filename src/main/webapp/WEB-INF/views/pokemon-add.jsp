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
<title>Add a Trainer</title>
</head>
<body>
	<%@ include file="partials/header.jsp" %>
	<main>
		<section class="container-fluid">
			<h2 class="display-4">Create a new Pokemon</h2>
		</section>
		<section class="container">
			<form method="post">
				<label>Name</label> <input type="text" name="name" required>
				<label>Level</label> <input type="number" name="level" required
					min="0">
				<div>
					<label>Trainer</label> <select name="trainer">
						<c:forEach var="trainer" items="${trainers}">
							<option value="${trainer.id}">${trainer.username}</option>
						</c:forEach>
					</select>
					<button type="submit" class="btn btn-success">Create</button>
			</form>
			<a href="/pokemon/" class="btn btn-warning">Cancel</a>
		</section>
	</main>
</body>
</html>