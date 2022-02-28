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
<body>
	<div class="topnav">
		<div>
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
  					<a href="#">Art</a>
  					<a href="#">Abstract</a>
  				</div>
  			</div>
  			<a  class="active" href="#news">Create</a>
  			<a class="active" href="#news"><img src="/images/login.png" alt="User Logo" width="40" height="40"/></a>
	 	</div>
	 </div>
	 
	 <div class="main">
	  	<h1>Create New Art</h1>
	 	<h5 class="middle">Upload Art</h5>
	 	
	 	<form action="/uploadFile" method="post" enctype="multipart/form-data">
  			
  			<div class="container">
     			<div class="button-wrap">
        			<label  class="button" for="upload">Upload Art</label>
        			<input  id="upload" type="file" name="file" accept="image/png, image/jpeg">
      			</div>
      			<br><br>
      			<img id="thumbnail" alt="Art Preview" width="200" height="200">
    		</div>
			<button>save</button>
	 	</form>	
	 	
	 	<p>${newName}</p>
	 	
	 	<form:form action="/submitArtForm" method="post" modelAttribute="art">
		
		<form:hidden path="artwork" value="${art.artwork}" />
		
		<h5 class="middle">Art Name</h5>
			<form:label path="name" for="name">Art Name:</form:label>
			<form:input path="name"  type="text" id="name" name="name"/><br><br>
		<h5 class="middle">Description</h5>
 			 <form:label path="description" for="description">Description:</form:label>
			<form:input path="description" type="textarea" id="description" name="description"/>
			<br><br>
		<h5 class="middle">Set Price</h5>
			<form:label path="price" for="price">Description:</form:label>
			<form:input path="price" type="number" id="price" name="price"/>
			<br><br>
  			
		<h5 class="middle">Category</h5>
  			<form:label path="category">Add Category:</form:label>
	 		<form:select path="category">
		  		<option value="Sport">Sport</option>
		  		<option value="People">People</option>
		  		<option value="Digital Art">Digital Art</option>
		  		<option value="Abstract">Abstract</option>
		  		<option value="Anime">Anime</option>
	  		</form:select>	
			<button>Create</button>
		</form:form>
	 	
	 	
	 </div>
	
</body>
</html>