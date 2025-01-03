<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DayZ Inventory</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css?v=1.0">

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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>