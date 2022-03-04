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
<title>Profile Page</title>
</head>
<script>
	function handleSell(artId){
		var hidden = document.getElementById(artId);
		hidden.style.display = "block";
		console.log(artId);
	}
</script>
<body>
	<div class="topnav">
		<div class="logo">
			<img src="/images/Free_Sample_By_Wix.jpg" alt="Art City Logo" width="200" height="80"/>
		</div>
      <form action="/arts/search" role="search">
        <input class="search" type="search" name="artist" placeholder="Search artists" />
      </form>
		<div class="link">
			<div class="dropdown">
  				<a href="#" class="dropbtn">Explore</a>
  				<div class="dropdown-content">
  					<a href="/dashboard">All Arts</a>
  					<a href="#">Sport</a>
  					<a href="#">People</a>
  					<a href="#">Abstract</a>
  					<a href="#">Digital Art</a>
  					<a href="#">Anime</a>
  				</div>
  			</div>
  			<a  class="dropbtn" href="/create-art">Create</a>
  			<div class="dropdown">
  				<img src="/images/login.png"alt="User Logo" width="40" height="40">
  				<div class="dropdown-content">
  					<a href="/profilePageMain/${userId} ">Profile</a>
  					<a href="/logout">Log out</a>
  				</div>
	 		</div>
	 	</div>
	 </div>
	<div class="image_placeHolder">
		<img src="/images/bvqVKk.jpg" alt="problem  Loding img" height="100" width="auto"/>
	</div>
		<div class="/profile_img text-center" style="margin:-29px 0">
			<img src="${user.userPicture}" alt="user_img" width="70" height="70" class="rounded-circle bg-secondary">
		</div>
		<div class="user_details text-center mt-5">
			<p class="profileName"><c:out value="${user.userName}"/></p>
			<p><c:out value="${user.description}"/></p>
			<p>Email: <c:out value="${user.email}"/></p>
			<p>Wallet: <c:out value="${user.wallet}" />Dojos</p>
			
		</div>
		<div class="user_tabs d-flex justify-content-around m-3 border-bottom">
			<p class="section"><a href="/profilePageMain/${userId}" class="text-dark mt-3  text-decoration-none">Collected</a></p>
			<h3><a href="/profilePageCreated/${userId}"class="text-dark mt-3 text-decoration-none">Created</a></h3>
			<p class="section"><a href="#"class="text-dark mt-3 text-decoration-none">Favorited</a></p>
		</div>
	<div class="user_nfts">
		<c:forEach var="art" items="${user.arts}">
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
				<div class="card_footer d-flex justify-content-between align-items-center ">
					<c:if test="${art.collector.id == userId}">
					<div class='card_footer'>
						<button onClick="handleSell(${art.id})" class=" btn btn-link text-primary mt-3 text-decoration-none" value="${art.id}">Edit Price</button>
					</div>
					
					<div id="${art.id}" style="display:none">
						<form action="/resell" method="post">
						<input type="hidden" name="_method" value="put" />
							<input type=hidden name="id" value="${art.id}" />
							<input class="inputtext" type="number" id="price" name="price" value="${art.price}"/>
							<button>Submit</button>
						</form>
					</div>
					</c:if>
					<a href="#" class="fav"> </a>
				</div>
				
			</div>
		</c:forEach>
	</div>

</body>
</html>