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
<title>Register</title>

<link rel="stylesheet" href="/css/register.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Comfortaa">
<!-- change to match your file/naming structure -->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<body>
<div class="container" onclick="onclick">
  <div class="top"></div>
  <div class="bottom"></div>
  <div class="center">
					<h2>Register</h2>
					<form:form action="/register" method="POST"
						modelAttribute="newUser">
						<div class="mb-3 row">
							<form:label path="userName" for="formInput"
								class="col-sm-6 col-form-label">Name</form:label>
							<form:errors path="userName" class="text-danger" />
							<form:input type="text" class="form-control" id="formInput"
								path="userName" />
						</div>
						<div class="mb-3 row">
							<form:label path="email" for="formInput"
								class="col-sm-6 col-form-label">Email</form:label>
							<form:errors path="email" class="text-danger" />
							<form:input type="email" class="form-control" id="formInput"
								path="email" />
						</div>
						<div class="mb-3 row">
							<form:label path="password" for="inputPassword"
								class="col-sm-6 col-form-label">Password
                      </form:label>
							<form:errors path="password" class="text-danger" />
							<form:input type="password" class="form-control"
								id="inputPassword" path="password" />
						</div>
						<div class="mb-3 row">
							<form:label path="confirm" for="inputPassword"
								class="col-sm-8 col-form-label">Confirm Password
                      </form:label>
							<form:errors path="confirm" class="text-danger" />
							<form:input type="password" class="form-control"
								id="inputPassword" path="confirm" />
						</div>
						<div>
								<button class="noselect" type = "submit" value = "Register"></button>
								<p>Already a member? <a href="/login">Login</a></p>
						</div>

					</form:form>
				  </div>
</div>
	
</body>
</html>