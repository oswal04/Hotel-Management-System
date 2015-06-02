<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Welcome ${sessionScope.username}</h1>
	<form method="post" action="">
	<table border="1">
		<tr>
			<td>Hotel Name</td>
			<td>Arrival Date</td>
			<td>Departure date</td>
			<td>RoomType</td>
			
		</tr>
		<c:forEach items="${booking}" var="message">
			<tr>
				<td><c:out value="${message.hotel.name}"></c:out></td>
				<td><c:out value="${message.arrivalDate}"></c:out></td>
				<td><c:out value="${message.departureDate}"></c:out></td>
				<td><c:out value="${message.roomType}"></c:out></td>
				
				
				<td><input type='checkbox' name='delete' value='${message.bookingID}'/>Delete</td>
			</tr>
		</c:forEach>
	</table></br></br>
	<input type="submit" name="submit" value="Delete Selected Messages"/>
	</form>	

</body>
</html>