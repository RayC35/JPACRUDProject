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

</head>
<body>

<div class="content">
<h1>Inventory Tracker</h1>

<form action = "idsearchresult.do" method = "get">
	<fieldset>
		<legend><h3>Find Item by ID</h3></legend>
		<label for="itemId" id="ID">Enter ID:</label>
		<input name="itemId" id="itemId">
		<input type="submit" value="Submit">
	</fieldset>
</form>

<h3><a href = "allitems.do">See All Items</a></h3>

<h3><a href = "addnewitem.do">Add an Item to the Database</a></h3>


</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>