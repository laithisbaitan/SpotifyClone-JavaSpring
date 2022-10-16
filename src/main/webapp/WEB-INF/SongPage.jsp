<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" type="text/css" href="/css/SongPage.css">


</head>

<body>
	<div class="navBar">
		<%@ include file="/WEB-INF/navbar.jsp"%>
	</div>


	<div class="background"></div>
	<section>
		<div class="album-info">
			<div class="album-art">
				<img src="https://images.pexels.com/photos/164853/pexels-photo-164853.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" />


			</div>
			<div class="album-details">
				<h1>
					<c:out value="${currSong.getTitle()}"></c:out>
					by
					<c:out value="${currSong.getArtist()}"></c:out>
				</h1>
			</div>
		</div>
		<div class="album-tracks">
			<table class="table">
			<thead>
				<tr>
					<th class="lll" scope="col">Name</th>
					<th class="lll" scope="col">Times Added</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${users }">
					<tr>
					<!-- user[0] is the users id -->
						<td class="lll"><a class="lll" href="/playlists/${user[0] }">${user[1] }</a></td>
						<td class="lll">${user[2] }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
	</section>
</body>

</html>