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
		<a href="home.do">Home</a>
	</nav>
<h1>Search Result</h1>
		<c:choose>
		<c:when test="">
		  <ul>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		  </ul>
		</c:when>
		<c:otherwise>
		  <p>No item found</p>
		</c:otherwise>
 </c:choose> 
</body>
</html>