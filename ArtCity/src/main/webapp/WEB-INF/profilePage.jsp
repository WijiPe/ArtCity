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
<link rel="stylesheet" href="/css/profilePage1.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Comfortaa">
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<title>Welcome Page</title>
</head>
<body>
	<div class="topnav">
		<div>
			<img src="images/Free_Sample_By_Wix.jpg" alt="ArtCityLogo"
				width="200" height="80">
		</div>
		<form onsubmit="event.preventDefault();" role="search">
			<input class="search" type="search"
				placeholder="Search items, collections, and accounts" autofocus
				required />
		</form>
		<div class="link">
			<a class="active" href="#news">Explore</a> <a class="active"
				href="#news">Create</a> <a class="active" href="#news"><img
				src="images/login.png" alt="User Logo" width="40" height="40"></a>
		</div>
	</div>
	<div class="image_placeHolder">
		<img src="images/sample_background.png" alt="problem  Loding img" height="100" width="auto"/>
	</div>
	<div class="profile_img text-center" style="margin:-29px 0">
		<img src="images/user_img.png" alt="user_img" width="70" height="70" class="rounded-circle bg-secondary">
	</div>
	<div class="user_details text-center mt-5">
		<p>User/Arist Name</p>
		<p>User Description and email</p>
		<p>Joined On created_at</p>
	</div>
	<div class="user_tabs d-flex justify-content-around m-3 border-bottom">
		<a href="#" class="text-dark mt-3  text-decoration-none">Collected</a> <a href="#"
				class="text-dark mt-3 text-decoration-none">Created</a> <a href="#"
				class="text-dark mt-3 text-decoration-none">Favorited</a> <a href="#"
				class="text-dark mt-3 text-decoration-none">Relist</a>
	</div>
	<div class="user_nfts">
		<div class="card" style="width: 300px">
				<div class="card_header">
					<img class="card-img-top" src="images/art_sample.png"
						alt="Problem Loading Page" style="width: 100%" height="250">
				</div>
				<div
					class="card-footer d-flex justify-content-between align-items-center">
					<div>
						<img src="images/user_img.png" alt="user_img" width="50"
							height="50" class="rounded-circle bg-secondary">
					</div>
					<div>
						<h4 class="card-title">Name Of Art</h4>
						<p class="card-text">Creator Name</p>
					</div>
					<div>
						<img src="images/info.png" alt="user_img" width="30" height="30"
							class="rounded-circle bg-secondary">
					</div>
				</div>
			</div>
	</div>


</body>
</html>