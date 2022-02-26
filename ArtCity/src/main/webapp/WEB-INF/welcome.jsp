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
	 	<div>
	 		<a class="active" href="#home">Explore</a>
  			<a href="#news">Create</a>
	 	</div>
	</div>
	<div class="main">
		<div class="main1">
			<h2>Discover, collect, and sell extraordinary ARTs</h2>
			<h4>ArtCity is the world's first and largest ART marketplace!</h4>
			<div class="main2">
				<a class="button" href="#news" >Explore</a>
				<a class="btn btn-dark" href="#news" >Create</a>
			</div>
		</div>
		<div>
			<img src="images/7-Tips-to-Finding-Art-Inspiration-Header-1024x649.jpg" alt="ArtCityLogo" width="600" height="400">
		</div>
	</div>
</body>
</html>