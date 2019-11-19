<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
	<br>
        <div align ="center">
                <h1> LOGIN PAGE </h1>
                <h3> Login Form </h3> 
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