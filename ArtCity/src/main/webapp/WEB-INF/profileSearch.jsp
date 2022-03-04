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
     <script>
    
  		function darkTheme(){
  			var themeIcon = document.querySelector("#themeIcon");
  			var pageTag=document.querySelector(".page");
  			//document.body.classList.toggle("dark-theme");
  			console.log("In darkTheme func");
  			console.log(pageTag)
  			//pageTag.calssList.add("dark-mode");
  			if(pageTag.classList.contains("dark-theme")){
  				pageTag.classList.remove("dark-theme")
  				themeIcon.src="images/moon.png";
  			}else{
  				pageTag.classList.add("dark-theme")
  				themeIcon.src="images/sun.png"
  			}
  		}
  	</script> 
    <title>Artist Page</title>
    
  </head>
  <body>
    <div class="topnav">
      <div class="logo">
        <img src="/images/Free_Sample_By_Wix.jpg" alt="Art City Logo" width="200" height="80" />
      </div>
      <form action="/arts/search" role="search">
        <input class="search" type="search" name="artist" placeholder="Search artists" />
      </form>
      <div class="link">
        <div class="dropdown">
          <a href="#" class="dropbtn">Explore </a>
          <div class="dropdown-content">
  					<a href="/dashboard">All Arts </a>
		            <a href="/dashboard/sport">Sport </a>
		            <a href="/dashboard/people">People </a>
		            <a href="/dashboard/abstract">Abstract </a>
		            <a href="/dashboard/digitalArt">Digital </a>
		            <a href="/dashboard/anime">Anime </a>
  				</div>
        </div>
        <a class="active" href="/create-art">Create </a>
        <div class="dropdown">
          <img src="/images/login.png" alt="User Logo" width="40" height="40">
          <div class="dropdown-content">
            <a href="/profilePageMain/${userId} ">Profile </a>
            <a href="/editProfile/${userId}">Edit </a>
            <a href="/logout">Log out </a>
          </div>
        </div>
      </div>
    </div>
    
    <div class="page">
      <div class="d-flex justify-content-between align-items-center text-center m-5">
        <h1 class="fontweigth">Explore Collections </h1>
        <img onclick="darkTheme()" src="images/moon.png" id="themeIcon">
      </div>
      <div class="tabs d-flex justify-content-around m-3 border-bottom">

        <p class="category2">
          <span class=" mt-3 text-decoration-none">Search Result</span>
        </p>
      </div>
      <div class="pageCards">
	<c:forEach var="art" items="${arts}">
	  <c:if test="${art.artist.id == user.id}">
          <div class="card" style="width: 300px">
            <div class="card_header">
              <a href="/artDetails/${art.id}">
                <img class="card-img-top" src="${art.artwork}" alt="Problem Loading Page" style="width: 100%" height="250">
              </a>
            </div>
            <div class="card-details d-flex justify-content-between align-items-center">
              <div class="detail">
                <div>
                  <p class="card-text">${art.artist.userName} </p>
                  <h4 class="card-title">${art.name} </h4>
                </div>
                <div>
                  <p class="card-text">price </p>
                  <h4 class="card-title">${art.price} </h4>
                </div>
              </div>
            </div>
            <div class="card_footer d-flex justify-content-between align-items-center ">
              <c:if test="${art.collector.id != userId}">
                <div class='card_footer'>
                  <a href="/artDetails/${art.id}" class="btn btn-link text-primary mt-3 text-decoration-none">Buy Now </a>
                </div>
              </c:if>
              <a href="#" class="fav"></a>
            </div>
          </div>
	   </c:if>
        </c:forEach>
              </div>
    </div>
	
</body>
</html>