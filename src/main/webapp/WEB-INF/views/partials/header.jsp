<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<a class="navbar-brand" href="#">Pokemon</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarColor02" aria-controls="navbarColor02"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarColor02">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link" href="/trainer/">Trainer
					Home</a></li>
			<li class="nav-item"><a class="nav-link" href="/pokemon/">Pokemon
					Home</a></li>
		</ul>
		<ul class="navbar-nav ml-auto">
			<c:if test="${user eq null}">
				<li class="nav-item"><a href="/login/" class="nav-link">Login</a>
			</c:if>
			<c:if test="${user ne null}">
				<li class="nav-item active">Welcome ${user.username}! <a
					href="/login/logout" class="nav-link">Logout</a>
			</c:if>
		</ul>
	</div>
</nav>
