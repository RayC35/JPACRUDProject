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
table {
background-color: #656962;
}
</style>
</head>
<body>
	<nav>
		<a href="home.do">Home</a>
	</nav>
<h1>Search Result</h1>
		<c:choose>
		<c:when test="${not empty searchResult }">
		<table>
			<tr>
				<th>ID</th>
				<th>Item Name</th>
				<th>Item Type</th>
				<th>Item Condition</th>
				<th>Quantity</th>
			</tr>
			<tr>
				<td>${searchResult.id }</td>
				<td>${searchResult.name }</td>
				<td>${searchResult.type }</td>
				<td>${searchResult.status }</td>
				<td>${searchResult.quantity }</td>
			</tr>
		</table>
		</c:when>
		<c:otherwise>
		  <p>No item found</p>
		</c:otherwise>
 </c:choose> 
 
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>