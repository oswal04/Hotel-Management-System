<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<title>Transaction Complete</title>
</head>
<body>

<p>Welcome username ${user.username}</p>

<p>Transaction complete</p>

	<input type="hidden" name="bookingID" value="${booking.bookingID}"></input>
	<input type="hidden" name="hotelId" value="${hotelSelected.hotelId}"></input>
	<input type="hidden" name="transactionID" value="${transaction.transactionID}"></input>

</body>
</html>