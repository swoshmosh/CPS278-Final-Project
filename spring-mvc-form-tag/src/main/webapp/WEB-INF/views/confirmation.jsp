<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirmation</title>
</head>
<body>
	Pet Name: ${pet.name} <br>
	Species: ${pet.species}<br>
	Gender: ${pet.gender}<br>
	<c:forEach var = "eachSource" items = "${pet.sources}">
	<li>${eachSource}</li>
	</c:forEach>
</body>
</html>