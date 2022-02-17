<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/myStyle.css">
</head>
<meta charset="UTF-8">
<title>Search</title>
<body>
	<div class="form-style-2">
	<form action="searchMovie" method="post">

		<h3>Search by:</h3>
		
		<table>
			<tr>
				<td>
					<input type="radio" id="title" name="searchMethod" value="title">
					<label for="title">Title</label>
				</td>
				<td>
					<input type="radio" id="description" name="searchMethod" value="description">
					<label for="description">Description</label>
					
				</td>
				</tr>
				<tr>
				<td>	 
					<input type="text" id="searchString" name="searchString"><br><br>
					<input type="submit" value="Search">
					<input type="hidden" name="customerId" value="${customerId}"/>
				</td>
				</tr>
	</table>
	</form>	
	<form action="${pageContext.request.contextPath}/">
    <input type="submit" value="Back to Home" />
    </form>
	</div>
</body>
</html>