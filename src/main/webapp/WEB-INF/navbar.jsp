<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<title>Insert title here</title>


</head>
<body>
	<div class="navBar">

		<nav class="navbar navbar-expand-xl navbar-light bg-light">
			<div class="container-fluid">
				<a href="/"> <img src="/images/spotifygreen.png"
					alt="spotify Logo" width="70" height="50"></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarText"
					aria-controls="navbarText" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<span class="navbar-text"> <a class="nav-link active"
					aria-current="page" href="/playlists">Playlist</a>
				</span> <span class="navbar-text"> <a class="nav-link active"
					aria-current="page" href="/home">Dashboard</a>
				</span>

				<form id="logoutForm" method="POST" action="/logout">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" /> <span class="navbar-text"> <input
						class="nav-link active" aria-current="page" type="submit"
						value="Logout" />
					</span>
				</form>
			</div>
		</nav>
	</div>
</body>
</html>