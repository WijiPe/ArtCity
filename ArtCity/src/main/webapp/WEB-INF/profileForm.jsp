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
<link rel="stylesheet" href="/css/artForm.css"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Comfortaa">
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<script>
  var loadFile = function(event) {
    var output = document.getElementById('output');
    output.src = URL.createObjectURL(event.target.files[0]);
    output.onload = function() {
      URL.revokeObjectURL(output.src) // free memory
    }
  };
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
  					<a href="/dashboard">All Arts </a>
		            <a href="/dashboard/sport">Sport </a>
		            <a href="/dashboard/people">People </a>
		            <a href="/dashboard/abstract">Abstract </a>
		            <a href="/dashboard/digitalArt">Digital Art</a>
		            <a href="/dashboard/anime">Anime </a>
  				</div>
  			</div>
  			<a  class="active" href="#news">Create</a>
  			<div class="dropdown">
  				<a href="#" ><img src="/images/login.png"alt="User Logo" width="40" height="40"></a>
  				<div class="dropdown-content">
  					<a href="/profilePageMain/${userId}">Profile</a>
  					<a href="/editProfile/${userId}">Edit</a>
  					<a href="/logout">Log out</a>
  				</div>
	 		</div>
	 	</div>
	 </div>
	 
	 <div class="main">
	  	<h1 class="middle">Create Profile</h1>
	 	<h5>Upload Profile</h5>
	 	
	 	<form action="/uploadProfilePicture" method="post" enctype="multipart/form-data">
  			<div class="container">
  			<img id="output" width="200" height="200"/><br><br>
     			<div class="button-wrap">
        			<label  class="button" for="upload">Upload Profile Picture</label>
        			<input  id="upload" type="file" name="file" accept="image/png, image/jpeg" onchange="loadFile(event)">
      				<button class="save">save</button>
      			</div>
    		</div>
	 	</form>	
	 	
	 	
	 	<form action="/submitProfileForm" method="post">
	 	<input type="hidden" name="_method" value="put" />
	 	
		
		<h5>Description</h5>

			<input class="inputtext" value="tell us about yourself" type="text" id="description" name="description"/>
			<br><br>

			<button class="createbtn">Create</button>
		</form>

	 </div>	

</body>
</html>