<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Info</title>
</head>

<body style='background-color: lime'>
	<h2 style='background-color: purple'>Lead Info</h2>
	<pre style='background-color: orange'>
	First Name: ${contact.firstName}<br/>
	Last Name: ${contact.lastName}<br/>
	Email: ${contact.email}<br/>
	Mobile: ${contact.mobile}<br/>
	Source: ${contact.source}<br/>
	</pre>
	
	<form action="composeEmail" metod="post">
	<input type = "hidden" name = "email" value = "${lead.email}"/>
	<input type = "submit" value = "Email"/>
	</form>
	
	
</body>
</html>