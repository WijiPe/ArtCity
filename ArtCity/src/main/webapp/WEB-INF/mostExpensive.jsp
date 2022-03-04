<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/dashboard.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Comfortaa">
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<title>Welcome Page</title>
</head>
<body>
	<div class="topnav">
		<div class="logo">
			<img src="/images/Free_Sample_By_Wix.jpg" alt="Art City Logo"
				width="200" height="80" />
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
		            <a href="/dashboard/digitalArt">Digital </a>
		            <a href="/dashboard/anime">Anime </a>
				</div>
			</div>
			<a class="active" href="/create-art">Create</a>
			
			<div class="dropdown">
				<img src="/images/login.png" alt="User Logo" width="40" height="40">
				<div class="dropdown-content">
					<a href="/profilePageMain/${userId} ">Profile</a> <a
						href="/editProfile/${userId}">Edit</a> <a href="/logout">Log
						out</a>
				</div>
			</div>

		</div>
	</div>
	<div class="d-flex justify-content-between align-items-center text-center m-5">
		<h1 class="fontweigth">Explore Collections</h1>
		<img src="images/moon.png" id="themeIcon">
		<!-- <div>
			<input type="checkbox" class="checkbox" id="chk" /> <label
				class="label" for="chk"> <i class="fas fa-moon"></i> <i
				class="fas fa-sun"></i>
				<div class="ball"></div>
			</label>
		</div> -->
	</div>
	<div class="tabs d-flex justify-content-around m-3 border-bottom">
			<p class="category2"><a href="/dashboard" class="text-dark mt-3 text-decoration-none">All</a></p>
			<h3><a href="/dashboard/mostExpensive" class="text-dark mt-3 text-decoration-none">Most Expensive</a></h3>
			<p class="category2"><a href="/dashboard/anime" class="text-dark mt-3 text-decoration-none">Anime</a></p>
			<p class="category2"><a href="/dashboard/people" class="text-dark mt-3 text-decoration-none">People</a></p>
			<p class="category2"><a href="/dashboard/digitalArt" class="text-dark mt-3 text-decoration-none">Digital Art</a></p>
			<p class="category2"><a href="/dashboard/sport" class="text-dark mt-3 text-decoration-none">Sport</a></p>
			<p class="category2"><a href="/dashboard/abstract" class="text-dark mt-3 text-decoration-none">Abstract</a></p>
		</div>
	
	<div class="pageContents">
		<!-- 	made few templates for cards  -->
		<!-- This is the card which looks like the one on welcome page of openseas -->
		<!--  d-flex justify-content-around -->
		<c:forEach var="art" items="${allArts}">
		<c:if test="${art.inMarket != false}">
			<div class="card" style="width: 300px">
				<div class="card_header">
					<a href="/artDetails/${art.id}"><img class="card-img-top"
						src="${art.artwork}" alt="Problem Loading Page"
						style="width: 100%" height="250"></a>
				</div>
				<div class="card-details d-flex justify-content-between align-items-center">

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

				<div class="card_footer d-flex justify-content-between align-items-center ">
					<c:if test="${art.collector.id != userId}">
						<div class='card_footer'>
							<a href="/artDetails/${art.id}" class="btn btn-link text-primary mt-3 text-decoration-none">Buy Now</a>
						</div>
					</c:if>
					<a href="#" class="fav"> </a>
				</div>
			</div>
			</c:if>
		</c:forEach>
	</div>

</body>
</html>


