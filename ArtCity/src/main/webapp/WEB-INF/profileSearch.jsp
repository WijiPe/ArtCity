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
<link rel="stylesheet" href="/css/profilePage.css" />
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
			<img src="/images/Free_Sample_By_Wix.jpg" alt="Art City Logo" width="200" height="80"/>
		</div>
		<form onsubmit="event.preventDefault();" role="search">
  			<input class="search" type="search" placeholder="Search items, collections, and accounts"  />  
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
  			</div>
  			<a  class="active" href="/create-art">Create</a>
  			<div class="dropdown">
  				<img src="/images/login.png"alt="User Logo" width="40" height="40">
  				<div class="dropdown-content">
  					<a href="/profilePageMain/${userId} ">Profile</a>
  					<a href="/editProfile/${userId}">Edit</a>
  					<a href="/logout">Log out</a>
  				</div>
	 		</div>
	 	</div>
	 </div>
	<div class="image_placeHolder">
		<img src="/images/sample_background.png" alt="problem  Loding img" height="100" width="auto"/>
	</div>
		<div class="/profile_img text-center" style="margin:-29px 0">
			<img src="${user.userPicture}" alt="user_img" width="70" height="70" class="rounded-circle bg-secondary">
		</div>
		<div class="user_details text-center mt-5">
			<p><c:out value="${user.userName}"/></p>
			<p><c:out value="${user.description}"/></p>
			<p>Email: <c:out value="${user.email}"/></p>
			<p>Wallet: <c:out value="${user.wallet}" />Dojos</p>
		</div>
		<div class="user_tabs d-flex justify-content-around m-3 border-bottom" class="border">
			<a href="/profilePageMain/${userId}" class="text-dark mt-3  text-decoration-none">Collected</a> 
			<a href="/profilePageCreated/${userId}"class="text-dark mt-3 text-decoration-none">Created</a> 
			<a href="#"class="text-dark mt-3 text-decoration-none">Favorited</a>
		</div>
	<div class="user_nfts">
		<c:forEach var="art" items="${user.nfts}">
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