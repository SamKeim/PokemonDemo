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
<title>Login</title>
</head>
<body>
	<%@ include file="partials/header.jsp"%>

	<main>
		<section class="jumbotron">
			<h2 class="display-4">Trainer Login</h2>
		</section>
		<div class="card text-center">
			<div class="card-header"><h4>${message}</h4></div>
			<div class="card-body">
				<h2>Login</h2>
				<form method="post">
					<p>
						<label>Username:</label> <input type="text" name="username"
							required>
					</p>
					<p>
						<label>Password:</label> <input type="password" name="password"
							required>
					</p>
					<p>
						<button type="submit" class="btn btn-success">Login</button>
					</p>
				</form>
			</div>
		</div>
		</section>
	</main>



</body>
</html>