<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" 
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" 
	crossorigin="anonymous"/>
<link href="styles.css" rel="stylesheet" />
<title>Insert title here</title>
</head>
<body>

	<div class = "container">
	<h2 class = "header">Welcome to Mike's Pizza</h2>
	
	 <div class="row" id = "list">
  <figure class="column" id = "hpOptions">
   <a href="/pizza-specials"><img src="specialtypizzas.jpg"  height="200px" width="300px" border="5px"></a>
   <figcaption class="caption"><a href="/pizza-specials">Check Out Our Specials</a></figcaption>
  </figure>
  <figure class="column" id = "hpOptions">
    <a href="/pizza-builder"><img src="build your own.jpg"  height="200px" width="300px" border="5px"></a>
    <figcaption class="caption"><a href="/pizza-builder">Build Your Own</a></figcaption>
  </figure>
  <figure class="column" id = "hpOptions">
    <a href="review-form"><img src="review.jpg"  height="200px" width="300px" border="5px"></a>
     <figcaption class="caption"><a href="/review-form">Leave a Review</a></figcaption>
  </figure>

</div> 
	
	
	
	
	
	
	</div>

</body>
</html>