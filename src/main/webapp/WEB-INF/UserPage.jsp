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
			
			<div class="album-details">
				<h1>
					<c:out value="${User.getFirstName()}"></c:out>
					's
					<c:out value="${currPlaylist.getName()}"></c:out>
				</h1>
				<br> <a href="/playlist/${currPlaylist.id}/delete">delete
					Playlist</a>
			</div>
		</div>
		<div class="album-tracks">

			<table class="table">
				<thead>
					<tr>
						<th class="lll">Title</th>
						<th class="lll">Artist</th>
						<th class="lll">Times Added</th>
						<th class="lll">Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${objects}">

						<tr class="lll">
             
              	<td class="lll"><a href="/songs/${item[0] }"><c:out value="${item[1]}"></c:out></a></td>
								<td class="lll"><c:out value="${item[2]}"></c:out></td>
								<td class="lll"><c:out value="${item[3]}"></c:out></td>
								<td class="lll"><a href="/removeSong/${item[0]}/${currPlaylist.id}">REMOVE</a></td>


						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</section>
</body>

</html>