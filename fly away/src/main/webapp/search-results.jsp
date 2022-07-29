<%@page import="java.sql.*"%>
<%@ page import="model.Search"%>

<%
String driverName = "com.mysql.jdbc.Driver";

String connectionUrl = "jdbc:mysql://localhost:3306/cricketer";
String userId = "root";
String password = "root";

String query = Search.getQuery();
try {
	Class.forName(driverName);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Search Results - FlyAway Airlines</title>

</head>

<body>
	<div >
		<a href="index.jsp" >FlyAway</a>
		<div >
			<a href="login.jsp" > Admin Login</a>
		</div>
	</div>
	<div >
		<h1 >
			<strong>Search Results</strong>
		</h1>
		<p>
					Showing available flights from : <br>
					<%=Search.source%> to <%=Search.destination%> <br> 
					Date of travel : <%=Search.date%> (<%=Search.day%>) <br>
					No of travellers : <%=Search.persons%> <br>
		</p>
		
		
		<table >
		
			<thead>
				<tr>
					<th >ID</th>
					<th >Flight</th>
					<th>Source</th>
					<th >Destination</th>
					<th>Date</th>
					<th >Ticket Price</th>
					<th >Select</th>
				</tr>
			</thead>
			
			<tbody>
			
				<br>
				
				<p >
					<strong>Select a flight </strong>
				</p>
				
				<br>
				
				<%
				try {
					connection = DriverManager.getConnection(connectionUrl, userId, password);
					statement = connection.createStatement();
					resultSet = statement.executeQuery(query);
					while (resultSet.next()) {
				%>
				<tr>
					<td><%=resultSet.getString("flight_id")%></td>
					<td><%=resultSet.getString("name")%></td>
					<td><%=resultSet.getString("source")%></td>
					<td><%=resultSet.getString("destination")%></td>
					<td><%=Search.date%></td>
					<td><%=resultSet.getString("ticket_price")%></td>
					<td>

				 	<form
							action="${pageContext.request.contextPath}/booking-details.jsp"
							method="post">

							<input type="hidden" name="name" value=" <%=resultSet.getString("name")%>">
							 <input type="hidden" name="ticket_price" value=" <%=resultSet.getString("ticket_price")%>">
							  <input type="hidden" name="flight_id" value=" <%=resultSet.getString("flight_id")%>">
							   <input type="submit" value="Book This Flight">
						</form>
					</td>
				</tr>
				<%
				}
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
			</tbody>
		</table>
	</div>

</body>
</html>