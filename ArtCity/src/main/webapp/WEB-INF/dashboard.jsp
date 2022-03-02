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
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Comfortaa">
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<title>Welcome Page</title>
</head>
<body>
		<div class="topnav">
			<div class="logo">
				<img src="images/Free_Sample_By_Wix.jpg" alt="ArtCityLogo"
					width="200" height="80">
			</div>
			<form onsubmit="event.preventDefault();" role="search">
				<input class="search" type="search" placeholder="Search items, collections, and accounts" />
			</form>
			<div class="link">
				<div class="dropdown">
					<a href="#" class="dropbtn">Explore</a>
					<div class="dropdown-content">
						<a href="/dashboard">All Arts</a>
  						<a href="#">Sport</a>
  						<a href="#">People</a>
  						<a href="#">Abstract</a>
  						<a href="#">Digital</a>
  						<a href="#">Anime</a>
  					</div>
					<a class="active" href="/create-art">Create</a>
					<div class="dropdown">
						<img src="images/login.png" alt="User Logo" width="40" height="40">
						<div class="dropdown-content">
							<a href="/profilePageMain/${userId} ">Profile</a>
  							<a href="/logout">Log out</a>
  						</div>
  					</div>
				</div>
			</div>
		</div>
		<div class="align-items-center text-center m-5">
			<h1 class="fontweigth">Explore Collections</h1>
		</div>
		<div class="tabs d-flex justify-content-around m-3 border-bottom">
			<a href="/dashboard" class="text-dark mt-3 text-decoration-none">All</a> 
			<a href="/dashboard/mostExpensive" class="text-dark mt-3 text-decoration-none">Most Expensive</a> 
			<form action="/dashboard/query">
				<input type="hidden" name="query" value="anime" />
			     <input type="submit" value="Anime" class="btn btn-link text-dark mt-3 text-decoration-none">
			</form>
			<form action="/dashboard/query">
				<input type="hidden" name="query" value="people" />
			     <input type="submit" value="People" class="btn btn-link text-dark mt-3 text-decoration-none">
			</form>
			<form action="/dashboard/query">
				<input type="hidden" name="query" value="Digital Art" />
			     <input type="submit" value="Digital Art" class="btn btn-link text-dark mt-3 text-decoration-none">
			</form>
			<form action="/dashboard/query">
				<input type="hidden" name="query" value="Sport" />
			     <input type="submit" value="Sport" class="btn btn-link text-dark mt-3 text-decoration-none">
			</form>
			<form action="/dashboard/query">
				<input type="hidden" name="query" value="abstract" />
			     <input type="submit" value="Abstract" class="btn btn-link text-dark mt-3 text-decoration-none">
			</form>
		</div>


		<div class="pageContents">
			<!-- 	made few templates for cards  -->
			<!-- This is the card which looks like the one on welcome page of openseas -->
			<!--  d-flex justify-content-around -->
			<c:forEach var="art" items="${allArts}">
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
			</c:forEach>
		</div>
</body>
</html>

	<!-- This is the card which looks like the one on Explore page of openseas -->
		<!-- 	<div class="card ml-3 mt-3" style="width: 300px">
				<div class="card_header">
					<img class="card-img-top" src="images/art_sample.png"
						alt="Problem Loading Page" style="width: 100%" height="150">
				</div>
				<div style="margin:-29px 0" class="text-center">
					<img src="images/user_img.png" alt="user_img" width="50" height="50" class="rounded-circle bg-secondary">
				</div>
				<div class="card-footer">

					<div class="mt-3 text-center">
						<h4 class="card-title">Collection name of <a href="#">Artist</a></h4>
					</div>
					<div class=" text-center">
						<p>Description about collection</p>
					</div>
				</div>
			</div>
		</div> -->



<!-- <div class="top_nav d-flex justify-content-between">
			<h1>Welcome to Market User</h1>
			<div class="d-flex align-items-center ">
				<p class="m-3">UserName</p>
				<img src="images/user_img.png" alt="user_img" width="50" height="50"
					class="rounded-circle bg-secondary">
			</div>
		</div> -->