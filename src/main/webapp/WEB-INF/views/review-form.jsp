<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link href="/style.css" rel="stylesheet" />
</head>
<body>

	<div class="container">

	<h2>Leave us a Review</h2>
	<br><br>
	<form action="reviews">
		<p>Your Name:
	<input type="text" name="name" required pattern="[A-Za-z]+" minlength="2" maxlength="10"/>
		</p>
	<p>
		Comment
		 <br>
		<textarea id="review" name="review" rows="4" cols="50">
		</textarea> 
	</p>
	<br>
	<fieldset>
	<legend>Rating</legend>
	<label>5(best))</label>
	<input type="radio" name="rating" value="5"/>
	<label>4</label>
	<input type="radio" name="rating" value="4"/>
	<label>3</label>
	<input type="radio" name="rating" value="3"/>
	<label>2</label>
	<input type="radio" name="rating" value="2"/>
	<label>1 (worst)</label>
	<input type="radio" name="rating" value="1"/>
	</fieldset>
	<button class = "submit" type="submit">Leave Review</button>
	<a href="index">Never Mind</a>
	</form>
	</div>

</body>
</html>