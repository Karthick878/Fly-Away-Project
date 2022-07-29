<%@ page import="java.sql.*"%>
<%@page import="servlets.Login"%>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>FlyAway Airlines</title>

</head>

<body>


	<div >
		<a href="index.jsp" >FlyAway</a>
		<div >
			<a href="login.jsp" > Admin Login</a>
		</div>
	</div>
	
	
	<%
	if (Login.isLoggedIn) {
	%>
	<div >
		<h2 >
			<b>Admin Dashboard</b>
		</h2>
		
		<p>
			<strong>
					You are LoggedIn as : <%=Login.email%>.
					Your Password is : <%=Login.password%>
			</strong>
			
		</p>
		
		<br>
		<br>
		
		<div>
			<div >
				<form method="post" action="${pageContext.request.contextPath}/change-password.jsp">
					<button type="submit">ChangePassword</button>
				</form>
				
			</div>
			<div >
				<form method="post" action="${pageContext.request.contextPath}/login.jsp">
					<button type="submit" >Logout</button>
				</form>
			</div>

		</div>
	</div>

	<section >
		<section >
			<section>
			
				<table >
					<thead>
						<tr>
							<th >Flight ID</th>
							<th >Name</th>
							<th >Source</th>
							<th >Destination</th>
							<th >Day</th>
							<th >Ticket Price</th>
						</tr>
					</thead>
					<tbody>

						<p>Flight Details :</p>
						
						<br>

						<%
						String driverName = "com.mysql.jdbc.Driver";
						String connectionUrl = "jdbc:mysql://localhost:3306/cricketer";
						String userId = "root";
						String password = "root";

						try {
							Class.forName(driverName);
							System.out.println("connected driver");
						} catch (ClassNotFoundException e) {
							e.printStackTrace();
						}

						Connection con = null;
						Statement stmt = null;
						ResultSet res = null;						
						
						
						try {
							con = DriverManager.getConnection(connectionUrl, userId, password);
							 System.out.println("connected");
							stmt = con.createStatement();
							
							String sql1="DROP TABLE IF EXISTS flight";														
							// execute query
							 stmt.executeUpdate(sql1);
							 System.out.println("droped");
							
							 String sql2="CREATE TABLE flight (flight_id int  NOT NULL,name varchar(128)  DEFAULT NULL,source varchar(128)  DEFAULT NULL,destination varchar(128)  DEFAULT NULL,days varchar(128)  DEFAULT NULL,ticket_price int  DEFAULT NULL,PRIMARY KEY (flight_id))";														
								// execute query
								 stmt.executeUpdate(sql2);
								 System.out.println("created");
								
								 String sql3="INSERT INTO flight VALUES(1,'AIR India','India','USA','MONDAY, TUESDAY, THURSDAY, SATURDAY',52000),(2,'USA Travel','USA','India','MONDAY, TUESDAY, THURSDAY, SATURDAY, FRIDAY ',32780),(3,'IndiaEuropa','India','UK','MONDAY, TUESDAY, THURSDAY, SATURDAY, FRIDAY, WEDNESDAY ',54600)";														
									// execute query
									 stmt.executeUpdate(sql3);
									 System.out.println("inserted");
							
							String sql = "SELECT * FROM flight";
							res = stmt.executeQuery(sql);
							System.out.println("executed");
							while (res.next()) {
						%>

						<tr>
							<td><%=res.getInt("flight_id")%></td>
							<td><%=res.getString("name")%></td>
							<td><%=res.getString("source")%></td>
							<td><%=res.getString("destination")%></td>
							<td><%=res.getString("days")%></td>
							<td><%=res.getInt("ticket_price") %>
							</td>
						</tr>
						<%
						}
						} catch (Exception e) {
						e.printStackTrace();
						}
						} else {
						out.print("You must Login first");
						}
						%>
					</tbody>
				</table>
			</section>
		</section>
	</section>
</body>
</html>
