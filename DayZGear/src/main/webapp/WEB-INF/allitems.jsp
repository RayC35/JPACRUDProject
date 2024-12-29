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
					<td><a href="getFilm.do?filmId=${items.id}">${items.name}</a></td>
					<td>${items.type }</td>
					<td>${items.condition}</td>
					<td>${items.quantity}</td>
				</tr><br>
			</c:forEach>

<%-- ${itemList } --%>


</body>
</html>