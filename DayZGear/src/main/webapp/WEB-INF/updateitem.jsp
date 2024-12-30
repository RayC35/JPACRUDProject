<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DayZ Inventory</title>
</head>
<body>
<nav>
		<a href="home.do">Home</a>
	</nav>
<h1>Edit Item</h1>

<h2>${item.name }</h2>
<strong>Item Type: </strong>${item.type }

<form action="updateItem.do" method="post">
<!-- REST OF FIELDS NEED TO BE ADDED? YES, SEEMS TO WORK -->
<input type="hidden" name="id" value="${ item.id}">
<input type="hidden" name="name" value="${ item.name}">
<input type="hidden" name="type" value="${ item.type}">
<!--  ------------------------------------------------------>
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

</body>
</html>