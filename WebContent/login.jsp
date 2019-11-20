<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<title>Login Page</title>
	
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	
</head>
<body>
	<br>
        <div align ="center">
                <h1> LOGIN PAGE </h1>
                <h3> <u> Login Form </u> </h3> 
                <div>
                        <form action="LoginRegister" method="post">
                                <br> 
                                USERNAME: <input type="text"  name="username" /> <br> <br>
                                PASSWORD: <input type="text" name="password" /> <br> <br>
                    			<input type="hidden" name="option" value="login"/>
                                <input type="submit" value="login" name="submit">
                               <!--  <input type="button" value="New User" name="reset">      -->      
								<a href="registration.jsp">New User</a>
                        </form>
                </div>

        </div>
</body>
</html>