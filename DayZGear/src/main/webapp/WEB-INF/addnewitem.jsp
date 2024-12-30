<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="jakarta.tags.core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DayZ Inventory</title>
</head>
<body>
<h1>Add A New Item</h1>

<!-- ADD ACTION -->
<fieldset><form action="addnewitem.do" method="post">
<label for="name"><strong>Item Name: </strong></label>
<input name="name" id="name"><br>

<label for="type"><strong>Item Type: </strong></label>
<select name="type" id="type">
	<option value="Medical">Medical</option>
	<option value="Clothing">Clothing</option>
	<option value="Food">Food/Drink</option>
	<option value="Miscellaneous">Miscellaneous</option>
</select>

<label for="status"><strong>Item Condition: </strong></label>
<select name="status" id="status">
	<option value="Pristine">Pristine</option>
	<option value="Worn">Worn</option>
	<option value="Damaged">Damaged</option>
	<option value="Badly damaged">Badly Damaged</option>
	<option value="Ruined">Ruined</option>
</select>

<label for="quantity"><strong>Quantity: </strong></label>
<input type="number" name="quantity" id="quantity" min="1" max="1000">

<input type="submit" value="Submit">
</form>
</fieldset>

<c:if test="${not empty error}">
    <p style="color: red;">${error}</p>
</c:if>
</body>
</html>