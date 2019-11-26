<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
<style type="text/css">
.btn {
  border: none; /* Remove borders */
  color: white; /* Add a text color */
  padding: 14px 28px; /* Add some padding */
  cursor: pointer; /* Add a pointer cursor on mouse-over */
}
.info {background-color: #2196F3;} /* Blue */
.info:hover {background: #0b7dda;}

body {font-family: Arial, Helvetica, sans-serif;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 60%;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: left;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>
</head>
<body>
<%
	if(session.getAttribute("username") == null){
		response.sendRedirect("login.jsp");
	}
%>
<h1 style="text-align: center;">Operator Page</h1>
<div class="container">
<div class="card">
    <div class="card-body">
    <button class="btn btn-info" id="myBtn">Add New Operator</button>
    <br />&nbsp;
   <table id="example2" class="table table-bordered table-hover">
                <thead style="background-color: #b3d1ff">
               <tr>
<th></th>
<th></th>
<th style="white-space: nowrap;">Operator Id</th>
<th style="white-space: nowrap;">First Name</th>
<th style="white-space: nowrap;">Last Name</th>
<th style="white-space: nowrap;">Email</th>
<th style="white-space: nowrap;">Phone</th>
<th style="white-space: nowrap;">Shift Start Time</th>
<th style="white-space: nowrap;">Shift End Time</th>
<th style="white-space: nowrap;">Total Customer</th>
</tr>
                </thead>
                <tbody>
              <c:forEach items="${operatorsList}" var="user">
<tr>
<td><a href='LoginRegister?type=operator&message=edit&id=${user.userId}'>Edit</a></td>
<td><a href='LoginRegister?type=operator&message=delete&id=${user.userId}'>Delete</a></td>
<%-- <td><a href="#myModal" data-id="${user.userId}" role="button" data-toggle="modal" id="btnEdit">Edit</a></td>
<td><a href="#myModal">Delete</a></td> --%>
<td style="white-space: nowrap;">${user.userId}</td>
<td style="white-space: nowrap;">${user.firstName}</td>
<td style="white-space: nowrap;">${user.lastName}</td>
<td style="white-space: nowrap;">${user.email}</td>
<td style="white-space: nowrap;">${user.phone}</td>
<td style="white-space: nowrap;">${user.shiftStart}</td>
<td style="white-space: nowrap;">${user.shiftEnd}</td>
<td style="white-space: nowrap;">${user.totalCustomer}</td>
</tr>
</c:forEach>

                </tbody>
              
              </table>
    </div>
  </div>
</div>
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
       <div>
           	<form role="form" action="LoginRegister" method="post">
           	 <h2> Infinity Operator </h2>
                <div class="card-body">
                  <div class="form-group">
                     <label for="firstname"> <b>First Name</b> </label>
                    <input class="form-control"id="firstname" type="text" placeholder="Enter first name" name="operator_firstname"
                        id="firstname">
                  </div>
                  <div class="form-group">
                   <label for="lastname"> <b>Last Name</b> </label>
                    <input class="form-control" type="text" placeholder="Enter last name" name="operator_lastname"
                        id="lastname">
                  </div>
                  <div class="form-group">
                         <label for="email"> <b>Email</b> </label>
                    <input type="email" class="form-control" id="email" name="operator_email"
                        aria-describedby="emailHelp" placeholder="Enter email">
                  </div>
                  <div class="form-group">
                     <label for="phone"> <b>Phone Number</b> </label>
                    <input class="form-control" type="tel" placeholder="Enter phone number" name="operator_phone"
                        id="phone">
                   
                  </div>
                   <div class="form-group">
                    <label for="shiftStartTime"> <b>Shift Start Time</b> </label> &nbsp;&nbsp;&nbsp;    
                    <input type="time" name="operator_shiftStartTime" id="shiftStartTime">
                   
                  </div>
                   <div class="form-group">
                     <label for="maxCustomers"> <b>Max Customer Number</b> </label> &nbsp;&nbsp;
                    <input type="number" name="operator_maxCustomers" id="maxCustomers" min="1" max="20">
                   
                  </div>
                   <div class="form-group">
                    <label for="date"> <b>Creation Date</b> </label>
                    <input class="form-control" type="date" name="operator_date" id="date" readonly>
                   
                  </div>
                   <div class="form-group">
                   
                    <input class="form-control" type="hidden" name="operator_userid" id="userId" >
                   
                  </div>
                </div>
                <!-- /.card-body -->

              
                    <button type="submit" value="addoperator" name="submit" class="btn btn-primary" id="btnRegister"
                    style=" position: relative; margin-left: 170px;"> Register </button>
           
              </form>
      
    </div>
  </div>

</div>
<div>${message}</div>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>

<script>
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": true,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "scrollX": true
     
      
    });
  });
  
/*   
  $(doument).on("click", "#btnEdit", function(){
	  
	  var id = $(this).attr("data-id");
	  alert(id);
	  var dataString = "id=" + id;
	  $.ajax({
		  type: "POST",
		  url: "LoginRegister",
		  data: dataString,
		  success: function(data){
			 console.log(data);
		  }
	  });
	  $.get("LoginRegister", function(data){
		  $("#firstname").val(data.operator.firstName);
	  });
  });
   */
  

  var modal = document.getElementById("myModal");

  
  var btn = document.getElementById("myBtn");

 
  var span = document.getElementsByClassName("close")[0];

 
  btn.onclick = function() {
    modal.style.display = "block";
  }
  span.onclick = function() {
	    modal.style.display = "none";
	  }
/*  var btnEdit = document.getElementById("btnEdit");

  
  btnEdit.onclick = function(){
	  modal.style.display = "block";
  }



  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
    if (event.target == modal) {
      modal.style.display = "none";
    } 
  } */
</script>
</body>
</html>



<!-- <script>
$(document).ready(function() {
    var table = $('#example').DataTable( {
        responsive: true
    } );
 
    new $.fn.dataTable.FixedHeader( table );
} );
</script> -->

