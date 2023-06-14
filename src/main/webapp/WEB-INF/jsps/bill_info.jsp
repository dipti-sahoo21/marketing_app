<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>bill information</title>
</head>
<body>
	<h2>Bill Information</h2>
	<pre>
		First Name:-${bill.firstName}
		Last Name:-${bill.lastName}
		Email:-${bill.email}
		Mobile:-${bill.mobile}
		Quantity:-${bill.quantity}
		Amount:-${bill.amount}
	</pre>
	
		
		

</body>
</html>








