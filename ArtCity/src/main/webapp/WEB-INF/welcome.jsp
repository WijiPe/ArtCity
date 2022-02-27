<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/welcome.css"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Comfortaa">
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<title>Welcome Page</title>
</head>
<body>
	<div class="topnav">
		<div>
			<img src="images/Free_Sample_By_Wix.jpg" alt="ArtCityLogo" width="200" height="80">
		</div>
		<form onsubmit="event.preventDefault();" role="search">
  			<input class="search" type="search" placeholder="Search items, collections, and accounts" autofocus required  />  
		</form>
		<div class="link">
			<div class="dropdown">
  				<span>Explore</span>
  				<div class="dropdown-content">
  					<p>Hello World!</p>
  					<p>Hello World!</p>
  					<p>Hello World!</p>
  				</div>
  			</div>
  			<a class="active" href="#news">Explore</a>
  			<a class="active" href="#news">Create</a>
  			<a class="active" href="#news"><img src="images/login.png" alt="User Logo" width="40" height="40"></a>
	 	</div>
	 </div>
	
	<div class="main">
		<div class="main1">
			<h2 class="line1">Create</h2>
			<h2 class="line2">Collect</h2>
			<h2 class="line3">Discover</h2>
			<h2 class="line4">Share</h2>
		</div>
		<div>
			<img class="art"src="images/7-Tips-to-Finding-Art-Inspiration-Header-1024x649 (1).jpg" alt="Art Image" width="600" height="400">
		</div>
		<div class="try">
		</div>
	</div>
	
</body>
</html>