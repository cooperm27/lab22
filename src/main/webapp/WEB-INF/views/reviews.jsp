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

	<h2>Reviews</h2>
	<br><br>
		<label>Name:</label>
			<c:out value="${revName}" />
	<p>
	<label>Rating:</label>
			<c:out value="${revRating}"/> out of 5.
	</p>
	<br>
	<p>
	<label>Review:</label>
			<c:out value="${review}"/>
	</p>
	<br>
	
	
	</div>

</body>
</html>