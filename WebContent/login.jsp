<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">

    <title>Login</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/sign-in/">

    <!-- Bootstrap core CSS -->
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <!-- <link href="signin.css" rel="stylesheet"> -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>

  <body class="text-center">
      <h1 class="h3 mb-3 font-weight-normal" style="margin-top: 20px;">Login</h1>
       <div class="jumbotron" style="margin:25px 550px 100px;" >
         <form class="form-signin">
           <img class="mb-4" src="https://getbootstrap.com/docs/4.0/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
           <h1 class="h3 mb-3 font-weight-normal">Please Sign in</h1>
           <label for="inputEmail" class="sr-only">Enter Username</label>
           <input type="email" id="inputEmail" class="form-control" placeholder="Enter Username" required autofocus>

           <br>

           <label for="inputPassword" class="sr-only">Password</label>
           <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
           <div class="checkbox mb-3">
             <label>

               <br>

               <input type="checkbox" value="remember-me"> Remember me
             </label>
           </div>
           <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
         </form>

       </div>


  </body>
</html>
