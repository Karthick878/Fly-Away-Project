<%@ page import="servlets.Login"%>
<% Login.isLoggedIn = false; %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin - Login FlyAway Airlines</title>
   
</head>
<body >
<div >
 <a href="index.jsp" >FlyAway</a>
                 <div>
        <a href="login.jsp"> Admin Login</a>
    </div>
</div>
    <section>
        <section >
            <div >
                <div >
                    <h2 ><b>Admin Login</b></h2>
                    <br>
                </div>
            </div>
            <section>
                <form action="login" method="post" class="form-container">
                    <div>
                        <label>Email address</label>
                        <input type="email" name="emailEntered"  value="Enter email">
                        <br>
                        <small>&nbsp;&nbsp;Email :<%=Login.email %></small>
                    </div>
                    <div >
                        <label>Password</label>
                        <input type="password" name="passwordEntered"  value="Password">
                        <br>
                        <small> Current Password :&nbsp;<%= Login.password %></small>
                    </div>
                    <button type="submit"value="Submit">Login</button>
                </form>
                
            </section>
           
        </section>
    </section>
<div align="center">
    FlyAway by saikrishna
</div>
</body>
</html>
