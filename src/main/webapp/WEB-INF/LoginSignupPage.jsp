
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/css/login2.css">
<style>
body {
	color: white;
}
</style>
</head>

<body>
	<div class="login-wrap">

		<div class="LoginDiv">
			<form action="/login" method="post">
				<c:if test="${logoutMessage != null}">
					<c:out value="${logoutMessage}"></c:out>
				</c:if>

				<c:if test="${errorMessage != null}">
					<c:out value="${errorMessage}"></c:out>
				</c:if>
				<br>

				<div class="login-html">
					<div class="logo">

						<img src="images\spotifygreen.png" alt="spotify logo" width="110"
							height="80"><br>
					</div>
					<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
						for="tab-1" class="tab">Sign In</label> <input id="tab-2"
						type="radio" name="tab" class="sign-up"><label for="tab-2"
						class="tab">Sign Up</label>
					<div class="login-form">
						<div class="sign-in-htm">
							<div class="group">
								<label for="user" class="label">Email</label> <input id="user"
									type="text" class="input" name="username">
							</div>
							<div class="group">
								<label for="pass" class="label">Password</label> <input
									id="pass" type="password" class="input" data-type="password"
									name="password">
							</div>

							<div class="group">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" /> <input type="submit" class="button"
									value="Sign In">
							</div>
			</form>

		</div>


		<div class="sign-up-htm">

			<form:form action="/registration" method="post" modelAttribute="user">

				<div class="group">

					<form:errors path="email" class="error"></form:errors>
					<br> <label for="user" class="label">Email</label>
					<form:input id="user" type="text" class="input" path="email" />
				</div>

				<div class="group">

					<form:errors path="firstName" class="error"></form:errors>
					<br> <label for="user" class="label">First Name</label>
					<form:input id="user" type="text" class="input" path="firstName" />
				</div>

				<div class="group">

					<form:errors path="lastName" class="error"></form:errors>
					<br> <label for="user" class="label">LastName</label>
					<form:input id="user" type="text" class="input" path="lastName" />
				</div>

				<div class="group">
					<form:errors path="password" class="error"></form:errors>
					<br> <label for="pass" class="label">Password</label>
					<form:input id="pass" type="password" class="input"
						data-type="password" path="password" />
				</div>

				<div class="group">
					<form:errors path="confirm" class="error"></form:errors>
					<br> <label for="pass" class="label">Repeat Password</label>
					<form:input id="pass" type="password" class="input"
						data-type="password" path="confirm" />
				</div>

				<div class="group">
					<input type="submit" class="button" value="Sign Up">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<label for="tab-1">Already Member?</label>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>