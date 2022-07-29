<%@  page import="model.Booking"%>
<%
Booking.flight_booking_id = request.getParameter("flight_id");//flight id
Booking.ticket_price = request.getParameter("ticket_price");// integer price
Booking.flight_name = request.getParameter("name"); //flight name
%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Booking Details - FlyAway Airlines</title>

</head>

<body>
	<div >
		<a href="index.jsp">Fly<span>Away</span></a>
		<div >
			<a href="login.jsp" > Admin Login</a>
		</div>
	</div>
	<section >
		<section >
			<div >
				<div >
					<h1>
						<b>Booking Details</b>
					</h1>
					<p>
						<span><strong>Enter Passenger Details</strong></span>
					</p>
					<br>
				</div>
			</div>
			<section>
				<form action="${pageContext.request.contextPath}/payment.jsp"
					method="post" class="form-container">
					<div class="form-group">
						<label for="pname">Passenger Name</label> <input type="text"
							class="form-control" id="pname" name="pname"
							placeholder="Enter name of the/any passenger(s)">
					</div>
					<div class="form-group">
						<label for="email">Email address</label> <input type="email"
							name="email" class="form-control" id="email"
							aria-describedby="emailHelp" placeholder="Enter email">
					</div>
					<div class="form-group">
						<label for="phone">Phone</label> <input type="number"
							class="form-control" id="phone" name="phone"
							placeholder="Enter phone number">
					</div>
					<br>
					<button type="submit" class="btn btn-success btn-block"
						value="Submit">Submit</button>
				</form>
			</section>
		</section>
	</section>
	<div class="footer" align="center">FlyAway by saikrishna</div>
</body>
</html>
