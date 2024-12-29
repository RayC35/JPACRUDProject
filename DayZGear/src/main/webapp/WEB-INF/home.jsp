<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DayZ Inventory</title>
</head>
<body>
<h1>DayZ Inventory Tracker</h1>

<form action = "idsearch.do">
	<fieldset>
		<legend><h3>Find Item by ID</h3></legend>
		<label for="id">Enter ID:</label>
		<input name="id" id="id">
		<input type="submit" value="Submit">
	</fieldset>
</form>

<h3><a href = "allitems.do">See All Items</a></h3>

<h3><a href = "addnewitem.do">Add an Item to the Database</a></h3>


</body>
</html>