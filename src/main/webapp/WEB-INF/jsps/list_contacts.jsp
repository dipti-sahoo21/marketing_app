<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>list of Contacts</title>
</head>
<body style='background-color: orange'>
	<h2 style='background-color: green'>List | Contacts</h2>
	
	<table>
	<tr>
		<th>FirstName</th>
		<th>LastName</th>
		<th>Email</th>
		<th>Mobile</th>
		<th>Source</th>
		<th>Billing</th>
		<th>Actions</th>
		
	</tr>
	
	<c:forEach var="contact" items="${contacts}"> 
	<tr>
		<td><a href="contactInfo?id=${contact.id}">${contact.firstName}</a></td>
		
		<td>${contact.lastName}</td>
		<td>${contact.email}</td>
		<td>${contact.mobile}</td>
		<td>${contact.source}</td>
		
		<td><a href ="createBill?id=${contact.id}">Billing</a></td>
	</tr>
	
	</c:forEach>
	
	</table>
	
	

</body>
</html>