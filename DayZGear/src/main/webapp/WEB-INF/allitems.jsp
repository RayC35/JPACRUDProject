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
	</nav><br>
	
	<c:forEach var="items" items="${itemList}">
				<tr>
					<td><a href="idsearchresult.do?itemId=${items.id}">${items.name}</a></td>
					<td>${items.type }</td>
					<td>${items.condition}</td>
					<td>${items.quantity}</td>
					<!--DELETE FORM -->
			<form action="deleteFilm.do" method="post">
				<input type="hidden" name="id" value="${items.id}" /> <input
					type="submit" value="Delete">
			</form>

			<!-- EDIT FORM -->
			<form action="updateItem.do" method="post">
				<input type="hidden" name="id" value="${items.id}" /> <input
					type="submit" value="Edit">
			</form>
				</tr><br>
			</c:forEach>



</body>
</html>