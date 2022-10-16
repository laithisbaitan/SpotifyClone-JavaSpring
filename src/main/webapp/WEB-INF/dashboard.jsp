<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="ISO-8859-1">

<title>Dashboard</title>


<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/css/Dashboard2.css">
</head>

<body>
	<%@ include file="/WEB-INF/navbar.jsp"%>


	<h1 class="title">
		Hello,
		<c:out value="${currUser.getFirstName()}"></c:out>
		<c:out value="${currUser.getLastName()}"></c:out>
		!
	</h1>

	<div class="text1">
		<p>
			<a class="rrr" href="/songs/new">+Insert a new song</a>
		</p>
	</div>

	<div class="text1">

		<h3>All the songs in our hub:</h3>
	</div>



	<div class="container">

		<c:forEach var="song" items="${objects}">
			<form action="/playlist/addSong" method="get">

				<div class="login-html" style="background-image: url(${song[4]})">


					<div class="group">
						<h1>
							<a class="song2" href="/songs/${song[0]}">${song[1]}</a>
						</h1>
					</div>

					<div class="group">
						<h2>
							<c:out value="${song[2]}"></c:out>
						</h2>
					</div>

					<div class="group">

						<p>
							<c:out value="${song[3]}"></c:out>
							Add(s)
						</p>
					</div>

					<center>

						<div class="group">
							<select class="sss" name="playlistId">
								<c:forEach var="play" items="${playlists}">
									<option value="${play.getId()}">${play.getName()}</option>
								</c:forEach>
							</select>
						</div>



						<br> <input type="hidden" name="songId" value="${song[0]}" />
						<div class="group">
							<input class="addBtn" type="submit" value="ADD" />

							<!-- deleting song -->

							<c:if test="${currUser.getRoles().get(0).getName()== 'ROLE_ADMIN'}">
									<a class="deletebutton" href="/deleteSong/${song[0] }">DELETE</a>
							</c:if>
						</div>


					</center>

				</div>
			</form>


		</c:forEach>
	</div>


</body>

</html>