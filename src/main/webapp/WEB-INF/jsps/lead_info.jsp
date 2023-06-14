<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lead Info</title>
</head>

<body style='background-color: blue'>
	<h2 style='background-color: grey'>Lead Info</h2>
	<pre style='background-color: olive'>
	First Name: ${lead.firstName}<br/>
	Last Name: ${lead.lastName}<br/>
	Email: ${lead.email}<br/>
	Mobile: ${lead.mobile}<br/>
	Source: ${lead.source}<br/>
	</pre>
	
	<form action="composeEmail" metod="post">
	<input type = "hidden" name = "email" value = "${lead.email}"/>
	<input type = "submit" value = "Email"/>
	</form>
	
	<form action  = "convertLead" method="post">
	<input type = "hidden" name = "id" value = "${lead.id}"/>
	<input type = "submit" value = "convert"/>
	</form>
	
</body>
</html>