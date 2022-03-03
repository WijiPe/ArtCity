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
<link rel="stylesheet" href="/css/dashboard.css"/>
<link rel="stylesheet"href="https://fonts.googleapis.com/css?family=Comfortaa">
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<title>Digital Art</title>
</head>
<body>
	<div class="topnav">
			<div class="logo">
				<img src="/images/Free_Sample_By_Wix.jpg" alt="ArtCityLogo"
					width="200" height="80">
			</div>
			<form onsubmit="event.preventDefault();" role="search">
				<input class="search" type="search"
					placeholder="Search items, collections, and accounts" autofocus
					required />
			</form>
			<div class="link">
				<div class="dropdown">
					<a class="dropbtn" href="#news">Explore</a>
					<div class="dropdown-content">
						<a href="/dashboard">All Arts</a>
  						<a href="#">Sport</a>
  						<a href="#">People</a>
  						<a href="#">Abstract</a>
  						<a href="#">Digital Art</a>
  						<a href="#">Anime</a>
  					</div>
  				</div>
					<a class="active" href="/create-art">Create</a>
					<div class="dropdown">
						<img src="/images/login.png" alt="User Logo" width="40" height="40">
						<div class="dropdown-content">
							<a href="/profilePageMain/${userId} ">Profile</a>
  							<a href="/logout">Log out</a>
  						</div>
  					</div>
  				</div>
  			</div>

		

		<div class="align-items-center text-center m-5">
			<h1 class="fontweigth">Explore Collections</h1>
		</div>
		<div class="tabs d-flex justify-content-around m-3 border-bottom">
			<p class="category2"><a href="/dashboard" class="text-dark mt-3 text-decoration-none">All</a></p>
			<p class="category2"><a href="/dashboard/mostExpensive" class="text-dark mt-3 text-decoration-none">Most Expensive</a></p>
			<p class="category2"><a href="/dashboard/anime" class="text-dark mt-3 text-decoration-none">Anime</a></p>
			<p class="category2"><a href="/dashboard/people" class="text-dark mt-3 text-decoration-none">People</a></p>
			<h3><a href="/dashboard/digitalArt" class="text-dark mt-3 text-decoration-none">Digital Art</a></h3>
			<p class="category2"><a href="/dashboard/sport" class="text-dark mt-3 text-decoration-none">Sport</a></p>
			<p class="category2"><a href="/dashboard/abstract" class="text-dark mt-3 text-decoration-none">Abstract</a></p>
		</div>


		<div class="pageContents">
			<c:forEach var="art" items="${allArts}">
				<c:if test="${art.category == 'Digital Art'}">
					<div class="card" style="width: 300px">
						<div class="card_header">
							<a href="/artDetails/${art.id}" ><img class="card-img-top" src="${art.artwork}" alt="Problem Loading Page" style="width: 100%" height="250"></a>
						</div>
						<div class="card-footer d-flex justify-content-between align-items-center">
							<div class="detail">
								<div>
									<p class="card-text">${art.artist.userName}</p>
									<h4 class="card-title">${art.name}</h4>
								</div>
								<div>
									<p class="card-text">price</p>
									<h4 class="card-title">${art.price}</h4>
								</div>
							</div>
						</div>
					</div>
				</c:if>
			</c:forEach>
		</div>

</body>
</html>