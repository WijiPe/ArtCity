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
<title>Create Image Form</title>
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
  			<a  class="active" href="#news">Create</a>
  			<div class="dropdown">
  				<a href="#" ><img src="/images/login.png"alt="User Logo" width="40" height="40"></a>
  				<div class="dropdown-content">
  					<a href="#">Log out</a>
  				</div>
	 		</div>
	 	</div>
	 </div>
	 
	 <div class="main">
	  	<h1 class="middle">Create New Art</h1>
	 	<h5>Upload Art</h5>
	 	
	 	<form action="/uploadFile" method="post" enctype="multipart/form-data">
  			
  			<div class="container">
  			<img id="output" width="200" height="200"/><br><br>
     			<div class="button-wrap">
        			<label  class="button" for="upload">Upload Art</label>
        			<input  id="upload" type="file" name="file" accept="image/png, image/jpeg" onchange="loadFile(event)">
      				<button class="save">save</button>
      			</div>
      			
    		</div>
			
	 	</form>	
	 	
	 	<p>${newName}</p>
	 	
	 	<form:form action="/submitArtForm" method="post" modelAttribute="art">
		
		<form:hidden path="artwork" value="${art.artwork}" />
		
		<form:hidden path="artist" value="${userId}" />
		
		<h5>Art Name</h5>

			<form:input class="inputtext" path="name" type="text" id="name" name="name"/>
			<br><br>
		<h5>Description</h5>

			<form:input class="inputtext" path="description" type="textarea" id="description" name="description"/>
			<br><br>
		<h5>Set Price</h5>

			<form:input class="inputtext" path="price" type="number" id="price" name="price"/>
			<br><br>
  			
		<h5>Category</h5>

	 		<form:select path="category" class="inputtext">
		  		<option value="Sport">Sport</option>
		  		<option value="People">People</option>
		  		<option value="Digital Art">Digital Art</option>
		  		<option value="Abstract">Abstract</option>
		  		<option value="Anime">Anime</option>
	  		</form:select><br><br>	
			<button class="createbtn">Create</button>
		</form:form>

	 </div>	
</body>
</html>