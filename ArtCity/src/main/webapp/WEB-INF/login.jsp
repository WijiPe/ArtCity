<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>

<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<title>Log In</title>

<link rel="stylesheet" href="/css/login.css"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Comfortaa">
<!-- change to match your file/naming structure -->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<body>

<div class="container" onclick="onclick">
  <div class="top"></div>
  <div class="bottom"></div>
  <div class="center">
    <h2>Please Sign In</h2>

				<form:form action="/login" method="POST" modelAttribute="newLogin">
			<div class="mb-3 row">
				<form:label path="email" for="formInput"
					class="col-sm-4 col-form-label">Email</form:label>
				<form:errors path="email" class="text-danger" />
				<form:input type="email" class="form-control" id="formInput"
					path="email" />
			</div>
			<div class="mb-3 row">
				<form:label path="password" for="inputPassword"
					class="col-sm-4 col-form-label">Password</form:label>
				<form:errors path="password" class="text-danger" />
				<form:input type="password" class="form-control" id="inputPassword"
					path="password" />
			</div>

		<button class="noselect" type = "submit" value = "Login"></button>
		<p>Want to Become a member? <a href="/register">Register</a></p>

		</form:form>

    <h2>&nbsp;</h2>
  </div>
</div>
	
</body>
</html>