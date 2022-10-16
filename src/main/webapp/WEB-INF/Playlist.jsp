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
	<%@ include file="/WEB-INF/navbar.jsp"%>

	<div class="addnewpl2">
		<a class="addnewpl" href="/playlists/new">+Add a new playlist</a>
	</div>


	<div class="background">
	</div>
	<section>

		<div class="album-details">
			<h1>Your Playlists</h1>
		</div>
		<div class="album-tracks">
			<ol>
				<c:forEach var="playlist" items="${playlists}">
					<li>
						<a class="lll" href="/playlist/${playlist.id}"> 
						<c:out	value="${playlist.name}"></c:out></a>
						
						<a class="delete" href="/deletePlaylist/${playlist.id }">DELETE</a>
					</li>
				</c:forEach>

			</ol>
		</div>
	</section>
</body>

</html>