
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
			<form:form action="/songs/new" method="post" enctype="multipart/form-data"
				modelAttribute="addSongForm">
				<h1>Add a New Song</h1>

				<div class="login-form">
					<div class="group">

						<form:errors class="error" path="title"></form:errors>
						<form:label path="title" for="user" class="label">Title</form:label>
						<form:input path="title" id="user" type="text" class="input" />
					</div>

					<div class="group">

						<form:errors class="error" path="artist"></form:errors>
						<form:label path="artist" for="user" class="label">Artist Name</form:label>
						<form:input path="artist" id="user" type="text" class="input" />
					</div>
          
          <!-- taking the path value and putting it in hidden input -->
					<input type="file" id="file" name="file" accept="image/jpg" />
					<div class="group">
						<input type="submit" class="button" value="Add Song" />
					</div>
			</form:form>

		</div>

</body>

</html>