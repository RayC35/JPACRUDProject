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
width: 50%;
}
#itemLink {
color: DarkBlue;
}

</style>
</head>
<body>

	<nav>
		<a href="home.do">Home</a><br>
		<a href="addnewitem.do">Add An Item</a>
	</nav>
	
	<h1>Inventory List</h1>
	
	<c:forEach var="items" items="${itemList}">
		<table>
				<tr>
					<th>Item Name</th>
					<th>Item Description</th>
					<th>Item Type</th>
					<th>Item Condition</th>
					<th>Quantity</th>
					<th>Weight</th>
				</tr>
				<tr>
					<td><a href="idsearchresult.do?itemId=${items.id}" id="itemLink">${items.name}</a></td>
					<c:choose>
					<c:when test="${empty items.description }">
						<td>${items.description }</td>
						</c:when>
					<c:otherwise>
						<td>"${items.description }"</td>
					</c:otherwise>
					</c:choose>
					<td>${items.type }</td>
					<td>${items.status}</td>
					<td>${items.quantity}</td>
					<td>${items.weight}</td>
				</tr>	
		</table>
						<form action="delete.do" method="post" style="display:inline;">
						<input type="hidden" name="itemId" value="${items.id}" /> <input
						type="submit" value="Delete" class="btn btn-danger btn-sm">
						</form>

						<form action="updateItem.do" method="get" style="display:inline;">
						<input type="hidden" name="itemId" value="${items.id}" /> <input
						type="submit" value="Edit" class="btn btn-primary btn-sm">
						</form>
				<br>
			</c:forEach>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>