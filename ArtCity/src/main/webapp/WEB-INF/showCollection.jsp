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
<link rel="stylesheet" href="/css/showCollection.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Comfortaa">


<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
	integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
	crossorigin="anonymous"></script>
<title>Welcome Page</title>
</head>
<body>
	<div class="topnav">
		<div>
			<img src="images/Free_Sample_By_Wix.jpg" alt="ArtCityLogo"
				width="200" height="80">
		</div>
      <form action="/arts/search" role="search">
        <input class="search" type="search" name="artist" placeholder="Search artists" />
      </form>
		<div class="link">
			<a class="active" href="#news">Explore</a> 
			<a class="active" href="#news">Create</a> 
			<a class="active" href="#news"><img src="images/login.png" alt="User Logo" width="40" height="40"></a>
		</div>
	</div>
	<!-- 	<div class="container"> -->

	<div class="page_contents d-flex">

		<!-- Sidebar -->
		<nav id="sidebar">
			<div class="sidebar-header">
				<h3>Bootstrap Sidebar</h3>
			</div>

			<ul class="list-unstyled components">
				<p>Dummy Heading</p>
				<li class="active"><a href="#homeSubmenu"
					data-toggle="collapse" aria-expanded="false"
					class="dropdown-toggle">Home</a>
					<ul class="collapse list-unstyled" id="homeSubmenu">
						<li><a href="#">Home 1</a></li>
						<li><a href="#">Home 2</a></li>
						<li><a href="#">Home 3</a></li>
					</ul></li>
				<li><a href="#">About</a></li>
				<li><a href="#pageSubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle">Pages</a>
					<ul class="collapse list-unstyled" id="pageSubmenu">
						<li><a href="#">Page 1</a></li>
						<li><a href="#">Page 2</a></li>
						<li><a href="#">Page 3</a></li>
					</ul></li>
				<li><a href="#">Portfolio</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</nav>
		<div class="nfts ml-3">
			<div class="card ml-3" style="width: 300px">
				<div class="card_header">
					<img class="card-img-top" src="images/art_sample.png"
						alt="Problem Loading Page" style="width: 100%" height="300">
				</div>
				<div class="card-footer">
					<div class="top_heading d-flex justify-content-between">
						<a href="#">Artist Profile Link</a>
						<p>Price</p>
					</div>
					<div
						class="bottom_heading d-flex justify-content-between margin-bottom">
						<p>NFT Name</p>
						<p>∇ 0.96</p>
					</div>
					<div class="bottom_heading d-flex justify-content-between">

						<div id='mouse_over'>
							<a href="#">Buy Now</a>
						</div>

						<a href="#" class="fav"> 
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- </div> -->
</body>
</html>