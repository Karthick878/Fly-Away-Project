<%@ page import="servlets.Login"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Change Password</title>

</head>
<body>
	<div >
		<a href="index.jsp">Fly<span
			>Away</span></a>
		<div >
			<a href="/login.jsp" > Admin Login</a>
		</div>
	</div>
	<div >
		<h2>
			<b>New Password<b>
		</h2>
		<br> <br> <br>
		<%if (Login.isLoggedIn) {%>
		<form action="change-password" method="post">
			<div >
				<label>New Password:</label> <br>
					 <input type="password" name="passwordEntered" placeholder="Enter a new password"> 
					 <br> 
					 <small >Current email : &nbsp; <%=Login.email%></small><br> 
					 <small >Current Password :&nbsp; <%=Login.password%></small>
			</div>
			<button type="submit" >Change Password</button>
		</form>
		<%
		} else {
		out.print("You must Login first");
		}
		%>
	</div>
	<div class="footer" align="center">FlyAway by saikrishna</div>
</body>
</html>
