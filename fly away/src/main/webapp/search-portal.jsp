<%@  page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>FlyAway</title>


</head>
<body>
	<div >
		<a href="index.jsp" >FlyAway</a>
		<div>
			<a href="login.jsp" > Admin Login</a>
		</div>
		
		
		
		
	</div>
	<section>
		<section >
			<div >
				<div >
					<h2 >
						<b> Ticket Booking <b>
					</h2>
					<br>
				</div>
			</div>
			<section >
				<form action="search" > <!-- servlet -->
					<div >
						<label for="date">Date</label> 
						<input type="date" name="date" placeholder="Travel Date..">
					</div>
					<div >
						<label for="source">Source</label> 
						<select name="source">
							<option value="India">India</option>
							<option value="USA">USA</option>
							<option value="UK">UK</option>
						</select>
					</div>
					<div >
						<label for="destination">Destination</label>
						 <select name="destination">
							<option value="USA">USA</option>
							<option value="UK">UK</option>
							<option value="India">India</option>
						</select>
					</div>
					<div>
						<label for="persons">No of Persons</label> 
						<select name="persons">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
						</select>
					</div>
					<br>
					<button type="submit"  value="Submit">Search Flights</button>
				</form>

			</section>
		</section>
	</section>
	
</body>
</html>