<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        
          <script src="customer_validation.js"></script>

    <title>Customer Registration</title>
    
   

</head>
<body>
	
	<div> 
				
		<div>
			
			<h3 style="margin:40px 730px;" > Reset Password  </h3>
			
			<div class="jumbotron" style="margin:55px 500px 100px;"  >
				
				<div class="form-group">
                    <label for="email"> <b> Enter your E-mail: </b> </label>
                    <input type="email" class="form-control" id="email" name="forgotPwd_email" aria-describedby="emailHelp" placeholder="We'll send a password reset code to this email.">
                </div>
                
				<br>
				
				<button type="submit" class="btn btn-primary" id="btnForgotPwd" style="position: relative; margin-left: 230px;"> Send Passcode </button>
				
		   </div>
		
		</div>		
	
	</div>	

</body>
</html>