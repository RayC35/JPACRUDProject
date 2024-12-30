<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DayZ Inventory</title>
<style>
table, th, td {
border: 1px solid black;
}
</style>
</head>
<body>
	<nav>
		<a href="home.do">Home</a>
	</nav>
	<h1>DayZ Inventory List</h1>
	
	<c:forEach var="items" items="${itemList}">
		<table>
				<tr>
					<th>Item Name</th>
					<th>Item Type</th>
					<th>Item Condition</th>
					<th>Quantity</th>
				</tr>
				<tr>
					<td><a href="idsearchresult.do?itemId=${items.id}">${items.name}</a></td>
					<td>${items.type }</td>
					<td>${items.status}</td>
					<td>${items.quantity}</td>
				</tr>	
		</table>

			<form action="delete.do" method="post">
				<input type="hidden" name="itemId" value="${items.id}" /> <input
					type="submit" value="Delete">
			</form>

			<!-- EDIT FORM -->
			<form action="updateItem.do" method="get">
				<input type="hidden" name="itemId" value="${items.id}" /> <input
					type="submit" value="Edit">
			</form>
				<br>
			</c:forEach>



</body>
</html>