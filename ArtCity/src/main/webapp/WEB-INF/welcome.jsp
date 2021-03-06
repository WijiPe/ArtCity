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
		<div class="logo">
			<img src="images/Free_Sample_By_Wix.jpg" alt="ArtCityLogo" width="200" height="80">
		</div>
      <form action="/arts/search" role="search">
        <input class="search" type="search" name="artist" placeholder="Search artists" />
      </form>
		<div class="link">
			<div class="dropdown">
  				<a href="#" class="dropbtn">Explore</a>
  				<div class="dropdown-content">
  					<a href="/dashboard">All Arts </a>
		            <a href="/dashboard/sport">Sport </a>
		            <a href="/dashboard/people">People </a>
		            <a href="/dashboard/abstract">Abstract </a>
		            <a href="/dashboard/digitalArt">Digital Art</a>
		            <a href="/dashboard/anime">Anime </a>
  				</div>
  			</div>
  			<a  class="active" href="/create-art">Create</a>
  			<div class="dropdown">
  				<img src="images/login.png"alt="User Logo" width="40" height="40">
  				<div class="dropdown-content">
  					<a href="/login">Log In</a>
  					<a href="/register">Register</a>
  					<a href="/logout">Log out</a>
  				</div>
	 		</div>
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