<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>info form</title>
</head>
<body>
	<form:form action = "processForm" modelAttribute = "pet">
		<table>
		<tr>
			<td>Name: </td>
			<td><form:input path="name" /></td>
		</tr>
		
		<!-- <tr>
		<td>Species: </td>
			<td><form:select path="species" >
			<form:option value = "dog"> Dog </form:option>
			<form:option value = "cat"> Cat </form:option>
			<form:option value = "bird"> Bird </form:option>
			<form:option value = "rabbit"> Rabbit </form:option>
		</form:select></td>
		</tr> -->
		
		<tr>
		<td>Species</td>
		<td><form:select path="species">
		<form:options items = "${speciesList}" />
		</form:select>
		</tr>
		
		<tr>
		<td>Gender</td>
		<td><form:radiobuttons path="gender" items = "${genderList}"/>
		
		</td>
		</tr>
		
		<tr>
		<td>How did you hear about us:</td>
		<td><form:checkboxes path="sources" items = "${sourceList}"/>
		
		</td>
		</tr>
		
		
	<tr>
	<td />
		<td><input type = "submit" value = "submit"/></td>
	</tr>
	</table>
	</form:form>
</body>
</html>