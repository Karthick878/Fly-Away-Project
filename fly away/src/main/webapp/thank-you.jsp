<%@  page import="model.Search"%>
<%@ page import="model.Booking"%>
<%

Booking.name_on_card = request.getParameter("name_on_card");
Booking.card_details = request.getParameter("card_details");

if (Booking.name_on_card.equals("") || Booking.card_details.equals("")) {
	out.println("Please enter valid card details");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Thank You - FlyAway Airlines</title>
</head>

<body>
	<div >
		<a href="index.jsp">FlyAway</a>
		
		<div >
			<a href="login.jsp" >Admin Login</a>
		</div>
	</div>
	<div >
		<h1 >
			<strong>THANK YOU </strong>
		</h1>
		
		<p>
			<strong>Your ticket has been booked. <br>
			 The summary/details are as follows  <br>
			</strong>
		</p>
		<p>
			<button onclick="window.print()">Print Ticket</button>
		</p>
		<br>
		<h3>Ticket Summary :</h3><br>
		
		<h3> 
			<strong>Traveling :</strong>&nbsp; <%=Search.source%> To <%=Search.destination%> <br> <br>
			<strong>Date :</strong> &nbsp; <%=Search.date%><br><br>
			<strong>Day:</strong>&nbsp;<%=Search.day%><br><br>
			<strong>Booking ID :</strong>&nbsp;<%=Booking.flight_booking_id%><br><br>
			<strong>Flight Name :</strong>&nbsp;<%=Booking.flight_name%><br><br>
			<strong>People :</strong> &nbsp;<%=Search.persons%>
		</h3>
		
		<br>
		<br>
		<h3>
			<strong>Passenger Summary : </strong>
		</h3>
		
		<h3>
			<strong>Name:</strong> &nbsp;
			<%=Booking.passenger_name%><br> <br>
			<strong> Email :</strong>&nbsp;
			<%=Booking.passenger_email%><br> <br>
			<strong>Phone No :</strong> &nbsp;
			<%=Booking.passenger_phone%><br><br>
		</h3>
		<br>
		<h3>
			<strong>Payment Summary : </strong>
		</h3>
		<h4>
			<strong>Payment By:</strong>&nbsp; <%=Booking.name_on_card%><br><br>
			<strong>Card No:</strong>&nbsp; <%=Booking.card_details%>
		</h4>
		<br>
		<h2>
		<strong>Total Paid:&nbsp; 
		Rs.<%=  Booking.ticket_price%>
		</strong>
		</h2>
		<br>
		<br>
	</div>
	

	
</body>
</html>
