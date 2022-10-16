<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link rel="stylesheet" type="text/css" href="/css/addPlaylist.css">

</head>

<body>
	<%@ include file="/WEB-INF/navbar.jsp"%>

	<div class="login-wrap">
		<div class="login-html">
			<form:form action="/playlists/new" method="post"
				modelAttribute="playlist">
				<h1>Add a New Playlist</h1>


				<div class="login-form">
					<div class="group">

						<form:errors class="error" path="name"></form:errors>
						<form:label path="name" for="user" class="label">Playlist Name</form:label>
						<form:input path="name" id="user" type="text" class="input" />
					</div>

					<div class="group">
						<input type="submit" class="button" value="Add">
					</div>
			</form:form>

		</div>
</body>
</html>