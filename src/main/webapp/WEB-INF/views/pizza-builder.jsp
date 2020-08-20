<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>
	<h2>Make It Your Way</h2>
	

	<form action="pizza-result">
	
	<p>
	Choose your Size (toppings are $.50/$1.00/$1.25 each for S/M/L)
	</p>
	<p>
	<label>Size</label>
	<select name="size">
	<option value="small">Small</option>
	<option value="medium">Medium</option>
	<option value="large">Large</option>
	</select>
	</p>
	
	<fieldset>
	<legend> Gluten Free?</legend>
	<label>No</label>
	<input type="radio" name="crust" value="no"/>
	<label>Yes ($2.00 Extra)</label>
	<input type="radio" name="crust" value="yes"/>
	</fieldset>
	<br>
	
	<fieldset>
	<legend> Cheese It Up</legend>
	<label>Provolone</label>
	<input type="radio" name="cheese" value="provolone"/>
	<label>Mozzarella</label>
	<input type="radio" name="cheese" value="mozzarella"/>
	<label>Cheddar</label>
	<input type="radio" name="cheese" value="cheddar"/>
	
	</fieldset>
	<p></p>
	<fieldset>
	<legend>Choose your Meat</legend>
	<label>Chicken</label>
	<input type="radio" name="protein" value="chicken"/>
	<label>Beef</label>
	<input type="radio" name="protein" value="beef"/>
	<label>Pepperoni</label>
	<input type="radio" name="protein" value="Pepperoni"/>
	<label>Ham</label>
	<input type="radio" name="protein" value="ham"/>
	<label>Bacon</label>
	<input type="radio" name="protein" value="bacon"/>
	<label>Sausage</label>
	<input type="radio" name="protein" value="sausage"/>
	</fieldset>
	<p></p>
	<fieldset class = "label">
	<legend>Choose Other Toppings</legend>
	<p>
	<label class = "label">Onions</label>
	<input class = "input"type="checkbox" name="toppings" value="onions"/>
	<label>Peppers</label>
	<input type="checkbox" name="toppings" value="peppers"/>
	<label>Mushrooms</label>
	<input type="checkbox" name="toppings" value="mushrooms"/>
	</p>
	<label>Black Olives</label>
	<input type="checkbox" name="toppings" value="olives"/>
	<label>Anchovies</label>
	<input type="checkbox" name="toppings" value="anchovies"/>
	<label>Pineapple</label>
	<input type="checkbox" name="toppings" value="pineapple"/>
	<p>
	<label>Tomatoes</label>
	<input type="checkbox" name="toppings" value="tomatoes"/>
	<label>Extra Cheese</label>
	<input type="checkbox" name="toppings" value="extraCheese"/>
	</p>
	</fieldset>
	
	<p>
	<label>Beverage</label>
	<select name="beverage">
	<option value="none">None</option>
	<option value="soda">Soda</option>
	<option value="lemonade">Lemonade</option>
	<option value="water">Water</option>
	</select>
	</p>
	<p></p>
	<p>
	 	Special Instructions:
	 <br>
	 	
		<textarea id="instructions" name="instructions" rows="4" cols="50">
		</textarea> 
	</p>
	
	<fieldset>
	<legend>Contact Info</legend>
	
	
	<p>Name:
	<input type="text" name="name" required pattern="[A-Za-z]+" minlength="2" maxlength="10"/>
	</p>
	
	<p>Phone Number:
	<input type="tel" id="phone" name="phone" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}">
	</p>
	
	<p>Email:
	<input type="email" name="email" />
	</p>
	
	
	
	
	</fieldset>
	
	<button class = "submit" type="submit">Place Order</button>
	
	
	</form>
	
	
	
	
	</div>

</body>
</html>