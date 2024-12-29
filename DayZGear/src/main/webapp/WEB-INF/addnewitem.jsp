<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DayZ Inventory</title>
</head>
<body>
<h1>Add A New Item</h1>

<!-- ADD ACTION -->
<fieldset><form action="" method="get">
<label for="name"><strong>Item Name: </strong></label>
<input name="name" id="name"><br>

<label for="type"><strong>Item Type: </strong></label>
<select id="type">
	<option value="medical">Medical</option>
	<option value="clothing">Clothing</option>
	<option value="food">Food/Drink</option>
	<option value="miscellaneous">Miscellaneous</option>
</select>

<label for="condition"><strong>Item Condition: </strong></label>
<select id="condition">
	<option value="pristine">Pristine</option>
	<option value="worn">Worn</option>
	<option value="damaged">Damaged</option>
	<option value="badly damaged">Badly Damaged</option>
	<option value="ruined">Ruined</option>
</select>

<label for="quantity"><strong>Quantity: </strong></label>
<input type="number" id="quantity" min="1" max="1000">

<input type="submit" value="Submit">
</form>
</fieldset>

</body>
</html>