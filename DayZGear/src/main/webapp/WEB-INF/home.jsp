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

<form action = "idsearchresult.do" method = "get">
	<fieldset>
		<legend><h3>Find Item by ID</h3></legend>
		<label for="itemId">Enter ID:</label>
		<input name="itemId" id="itemId">
		<input type="submit" value="Submit">
	</fieldset>
</form>

<h3><a href = "allitems.do">See All Items</a></h3>

<h3><a href = "addnewitem.do">Add an Item to the Database</a></h3>


</body>
</html>