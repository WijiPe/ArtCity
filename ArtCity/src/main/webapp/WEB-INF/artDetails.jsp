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
<link rel="stylesheet" href="/css/artDetails.css"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Comfortaa">
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<title>Art Details Page</title>
</head>
<body>
	<div class="topnav">
		<div class="logo">
			<img src="/images/Free_Sample_By_Wix.jpg" alt="Art City Logo" width="200" height="80"/>
		</div>
		<form onsubmit="event.preventDefault();" role="search">
  			<input class="search" type="search" placeholder="Search items, collections, and accounts"  />  
		</form>
		<div class="link">
			<div class="dropdown">
  				<a href="#" class="dropbtn">Explore</a>
  				<div class="dropdown-content">
  					<a href="#">Sport</a>
  					<a href="#">People</a>
  					<a href="#">Abstract</a>
  					<a href="#">Digital</a>
  					<a href="#">Anime</a>
  				</div>
  			</div>
  			<a  class="active" href="/create-art">Create</a>
  			<div class="dropdown">
  				<a href="#" ><img src="/images/login.png"alt="User Logo" width="40" height="40"></a>
  				<div class="dropdown-content">
  					<a href="/logout">Log out</a>
  				</div>
	 		</div>
	 	</div>
	 </div>
	 <div class="container">
	 	<div class="box1">
			<h2><img src="${art.artwork}"alt="${art.name}" width="500" height="500"></h2>
	 	</div>
	 	<div class="box2">
	 		<h4><c:out value="${art.artist.userName}"/></h4>
	 		<h1><c:out value="${art.name}"/></h1>
	 		<h4>Owned By <c:out value="${art.collector.userName}"/></h4>
	 		<h4><c:out value="${art.price}"/> Dojos </h4>
	 		<button>Buy Now</button>
	 		<h2>Description</h2>
	 		<h4>Create By <c:out value="${art.artist.userName}"/></h4>
	 		<h4><c:out value="${art.description}"/></h4>
	 		
	 	</div>
	 </div>
</body>
</html>