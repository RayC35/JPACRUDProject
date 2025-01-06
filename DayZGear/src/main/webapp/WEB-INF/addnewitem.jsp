<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="jakarta.tags.core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DayZ Inventory</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css?v=1.0">
<style>
h1 {
margin-bottom: 100px;
}
</style>
</head>
<body>
	<nav>
		<a href="home.do">Home</a>
	</nav>
<h1>Add A New Item</h1>

<fieldset><form action="newitemconfirm.do" method="post">
<label for="name"><strong>Item Name: </strong></label>
<input name="name" id="name"><br>

<label for="description"><strong>Description: </strong></label>
<input name="description" id="description"><br>

<label for="type"><strong>Item Type: </strong></label>
<select name="type" id="type">
	<option value="Clothing">Clothing</option>
	<option value="Food/Drink">Food/Drink</option>
	<option value="Medical">Medical</option>
	<option value="Weapons/Ammo">Weapons/Ammo</option>
	<option value="Miscellaneous">Miscellaneous</option>
</select>

<label for="status"><strong>Item Condition: </strong></label>
<select name="status" id="status">
	<option value="Pristine">Pristine</option>
	<option value="Worn">Worn</option>
	<option value="Damaged">Damaged</option>
	<option value="Badly damaged">Badly Damaged</option>
	<option value="Ruined">Ruined</option>
</select><br>

<label for="quantity"><strong>Quantity: </strong></label>
<input type="number" name="quantity" id="quantity" min="1" max="1000"><br>

<label for="weight"><strong>Weight: </strong></label>
<input type="number" name="weight" id="weight" min="0" max="1000" step=".01"><br>

<input type="submit" value="Submit">
</form>
</fieldset>

<c:if test="${not empty error}">
    <p style="color: red;">${error}</p>
</c:if>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>