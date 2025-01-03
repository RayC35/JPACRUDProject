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
		<a href="home.do">Home</a><br>
		<a href="addnewitem.do">Add Another Item</a>
	</nav>
	<h2>You added a new item!</h2>
	<ul>
		<li><strong>ID: </strong>${item.id }
		<li><strong>Item Name: </strong>${item.name }</li>
		<li><strong>Item Type: </strong>${item.type }</li>
		<li><strong>Item Condition: </strong>${item.status }</li>
		<li><strong>Quantity: </strong>${item.quantity }</li>
	</ul>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	
</body>
</html>