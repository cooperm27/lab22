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

		<h2>Here Are Our Specials</h2>
		<fieldset class = "pSpecials">
	<legend>The Hawaiian</legend>
		<p>
			
			<label>Size:</label>
			<c:out value="${size}"/>

		<p>
			<label>Protein:</label>
			<c:out value="${hawProtein}" />

		</p>
		<p>
	
		</p>
		<label>Toppings:</label>
		<ul>
			<c:forEach items="${hawToppings}" var="topping">

				<li><c:out value="${topping}" /></li>

			</c:forEach>

		</ul>

		<p class = "currency">
	
			<label>Total Cost:</label>
			
			<c:out value="${hawFinalTotal}" />
		</p>
		</fieldset>
				<fieldset class = "pSpecials">
	<legend>The Supreme</legend>
		<p>
			
			<label>Size:</label>
			<c:out value="${size}"/>

		<p>
			<label>Protein:</label>
			<c:out value="${supProtein}" />

		</p>
		<p>
	
		</p>
		<label>Toppings:</label>
		<ul>
			<c:forEach items="${supToppings}" var="topping">

				<li><c:out value="${topping}" /></li>

			</c:forEach>

		</ul>

		<p class = "currency">
	
			<label>Total Cost:</label>
			
			<c:out value="${supFinalTotal}" />
		</p>
		</fieldset>
		<p>
			<c:out value="${email}" />
		</p>

	


		<p>
			<fmt:formatNumber value="${age}" type="number" />
		</p>



	</div>

</body>
</html>