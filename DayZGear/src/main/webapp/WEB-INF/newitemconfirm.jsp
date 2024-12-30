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
</body>
</html>