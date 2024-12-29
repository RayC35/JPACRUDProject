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
	<nav>
		<a href="home.do">Home</a>
	</nav>
<h1>Search Result</h1>
		<c:choose>
		<c:when test="${not empty searchResult }">
		  <ul>
			<li><strong>ID: </strong>${ searchResult.id}</li>
			<li><strong>Item Name: </strong>${ searchResult.name}</li>
			<li><strong>Item Type: </strong>${searchResult.type}</li>
			<li><strong>Item Condition: </strong>${searchResult.condition}</li>
			<li><strong>Quantity: </strong>${searchResult.quantity}</li>
		  </ul>
		</c:when>
		<c:otherwise>
		  <p>No item found</p>
		</c:otherwise>
 </c:choose> 
</body>
</html>