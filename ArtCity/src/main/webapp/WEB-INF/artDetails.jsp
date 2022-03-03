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
  					<a href="/logout">Log out </a>
  				</div>
	 		</div>
	 	</div>
	 </div>
	 
<section class="product">
	<div class="product__photo">
		<div class="photo-container">
			<div class="photo-main">
				<div class="controls">
					<span><c:out value="${art.name}"/></span>
				</div>
				<img src="${art.artwork}"alt="${art.name}">
			</div>
		</div>
	</div>
	<div class="product__info">
		<div class="title">
			<span style="color:blue;"><c:out value="${art.artist.userName}"/></span>
			<h1><c:out value="${art.name}"/></h1>
			<p >Owned By <span style="color:blue;"><c:out value="${art.collector.userName}"/></span></p>
		</div>
		<div class="price">
			Price: <span><c:out value="${art.price}"/> Dojo Coins</span>
		</div>

		<a href="/art/buy/${art.id}" class="button glow-on-hover p-3">Buy Now</a>
		<div class="description">
			<h3>Description</h3>

				<p><c:out value="${art.description}"/></p>
				<p>Create By <span style="color:blue;"><c:out value="${art.artist.userName}"/></span></p>

		</div>
	</div>
</section>

</body>
</html>