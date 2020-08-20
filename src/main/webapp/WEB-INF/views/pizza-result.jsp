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

		<h2>Here Is What You Ordered</h2>
		<fieldset>
	<legend>Order Receipt</legend>
		<p>
			
			<label>Size:</label>
			<c:out value="${size}"/>

		<p>
			<label>Protien:</label>
			<c:out value="${meat}" />

		</p>
		<p>
	
		</p>
		<label>Toppings:</label>
		<ul>
			<c:forEach items="${toppings}" var="topping">

				<li><c:out value="${topping}" /></li>

			</c:forEach>

		</ul>

		<p>
			<label>Toppings:</label>
			<c:out value="${beverage}" />
		</p>
		<p class = "currency">
	
			<label>Total Cost:</label>
			
			<c:out value="${finalTotal}" />
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