<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<title>User Registration</title>
</head>
<body>

<script>

$( document ).ready(function() {
	
	
	$( "#username" ).keyup(function () {
		var username = $('#username').val();
					
		$.ajax({
			 
	       url: "ajax.html",
	       type: "POST",
	       data : {
	       	username: username
	          
	           
	       },
	       success : function(response){
	       //	alert(response);
	       	$("#msg").css({
	       		    'color':'red',
	       		    'font-size':'20px'
	       		});
	       	 $("#msg").html(response);				                         
	       }
	   });
		
	});
});


</script>


<div class="container">
		<h2>Book Hotel</h2>
		<p>Welcome username ${user.username}</p>
		
		<form role="form" method="POST" action="LoginPage">

			

				<fieldset class="clearfix">

					<p>
						<span class="fontawesome-user"></span> <input type="text"
							value="Firstname" name="Firstname" required="required"/>
					<p>
						<span class="fontawesome-user"></span> <input type="text"
							value="Lastname" name="Lastname" required="required"/>
					<p>
						<span class="fontawesome-user"></span> <input type="text"
							value="Date of birth" name="dob" required="required"/>
					<p>
						<span class="fontawesome-user"></span> <input type="text"
							value="Username" name="Username" id="username" required="required"/>
					<p id="msg">
					<p>
						<span class="fontawesome-user"></span> <input type="password"
							value="Password" name="Password" required="required"/>
					<p>
						<span class="fontawesome-user"></span> <input type="text"
							value="Email" name="Email" required="required"/>
					<p>
						<input type="submit" value="Register">
					</p>

				</fieldset>

			</form>

	
</body>
</html>