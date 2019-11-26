<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
	
	 <script src="customer_validation.js"></script>

<title>View Customer Details</title>

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


<h1 style="text-align: center;">Customer Page Page</h1>
<div class="container">
<div class="card">
    <div class="card-body">
    <button class="btn btn-info" id="myBtn">Add New Customer</button>
    <br />&nbsp;
   <table id="example2" class="table table-bordered table-hover">
                <thead style="background-color: #b3d1ff">
               <tr>
			<th></th>
			<th></th>
			<th style="white-space: nowrap;">Customer Id</th>
			<th style="white-space: nowrap;">First Name</th>
			<th style="white-space: nowrap;">Last Name</th>
			<th style="white-space: nowrap;">Email Id</th>
			<th style="white-space: nowrap;">Phone </th>
			<th style="white-space: nowrap;">Address 1 </th>
			<th style="white-space: nowrap;">Address 2 </th>
			<th style="white-space: nowrap;">Landmark </th>
			<th style="white-space: nowrap;">Zipcode </th>
			<th style="white-space: nowrap;">Creation Date </th>
			<th style="white-space: nowrap;"> Operator Id </th>
			<th style="white-space: nowrap;"> Retailer id </th>		
			</tr>
			 </thead>
			 <tbody>
			<c:forEach items="${customersList}" var="user">
			<tr>
			
			<td><a class="btn btn-primary btn-lg active" role="button" aria-pressed="true" href='LoginRegister?type=customer&message=update&id=${user.userId}'>Update</a></td>
			
			<td><a class="btn btn-primary btn-lg active" role="button" aria-pressed="true" href='LoginRegister?type=customer&message=delete&id=${user.userId}'>Delete</a></td>
			<td style="white-space: nowrap;">${user.userId}</td>
			<td style="white-space: nowrap;">${user.firstName}</td>
			<td style="white-space: nowrap;">${user.lastName}</td>
		    <td style="white-space: nowrap;">${user.emailId}</td>
		    <td style="white-space: nowrap;">${user.phone}</td>
		    <td style="white-space: nowrap;">${user.address}</td>
		    <td style="white-space: nowrap;">${user.address2}</td>
		    <td style="white-space: nowrap;">${user.landMark}</td>
		    <td style="white-space: nowrap;">${user.zip}</td>
		    <td style="white-space: nowrap;">${user.creationDate}</td>
		    <td style="white-space: nowrap;">${user.operatorId}</td>
		    <td style="white-space: nowrap;">${user.retailerId}</td>		
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
            
            <form name = "customer_regform" action="LoginRegister" method="post">
                <div>
                    <label for="firstname"> <b>First Name</b> </label>
                    <input class="form-control" type="text" placeholder="Enter first name" name="customer_firstname" id="firstname">
                    <br>
                </div>

                <div>
                    <label for="lastname"> <b>Last Name</b> </label>
                    <input class="form-control" type="text" placeholder="Enter last name" name="customer_lastname" id="lastname">
                    <br>    
                </div>

                <div class="form-group">
                    <label for="email"> <b>Email</b> </label>
                    <input type="email" class="form-control" id="email" name="customer_email" aria-describedby="emailHelp" placeholder="Enter email">
                </div>

                <div>
                    <label for="phone"> <b>Phone Number</b> </label>
                    <input class="form-control" type="tel" placeholder="Enter phone number" name="customer_phone" id="phone">
                    <br>
                </div>

                <div class="form-group">
                    <label for="address1"><b>Address 1</b></label>
                    <textarea class="form-control" id="address1" name="customer_address1" placeholder="Enter primary address.." rows="3"></textarea>
                </div>

                <div class="form-group">
                    <label for="address2"><b>Address 2</b></label>
                    <textarea class="form-control" id="address2" name="customer_address2" placeholder="Enter secondary address.." rows="3"></textarea>
                </div>

                <div>
                    <label for="landmark"> <b>Landmark</b> </label>
                    <input class="form-control" type="text" placeholder="Enter Landmark" name="customer_landmark" id="landmark">
                    <br>
                </div>

                <div>
                    <label for="zipcode"> <b>Zipcode</b> </label>
                    <!-- <input class="form-control" type="number" placeholder="Enter Zipcode" name="customer_zipcode" id="zipcode"> -->
                    <select onchange="fill_zip();" id="zipcode" name = "zipcode">
                   	<option value=10038>10038</option>
			        <option value=60007>60007</option>
			        <option value=90001>90001</option>
			        <option value=94016>94016</option>
			        <option value=33101>33101</option>
			        <option value=08817>08817</option>
			        <option value=88901>88901</option>
                    </select>
                    <br>
                </div>
                
                <div>
                        <label> <b>State</b> </label> &nbsp;&nbsp;
                         <input class="form-control" id="state" name="state" readonly="readonly"/> 
                        <!-- <select id="state" name="state">
                            <option value="select" selected> Select </option>
                            <option value="AL">Alabama</option>
                            <option value="AK">Alaska</option>
                            <option value="AZ">Arizona</option>
                            <option value="AR">Arkansas</option>
                            <option value="CA">California</option>
                            <option value="CO">Colorado</option>
                            <option value="CT">Connecticut</option>
                            <option value="DE">Delaware</option>
                            <option value="DC">District Of Columbia</option>
                            <option value="FL">Florida</option>
                            <option value="GA">Georgia</option>
                            <option value="HI">Hawaii</option>
                            <option value="ID">Idaho</option>
                            <option value="IL">Illinois</option>
                            <option value="IN">Indiana</option>
                            <option value="IA">Iowa</option>
                            <option value="KS">Kansas</option>
                            <option value="KY">Kentucky</option>
                            <option value="LA">Louisiana</option>
                            <option value="ME">Maine</option>
                            <option value="MD">Maryland</option>
                            <option value="MA">Massachusetts</option>
                            <option value="MI">Michigan</option>
                            <option value="MN">Min nesota</option>
                            <option value="MS">Mississippi</option>
                            <option value="MO">Missouri</option>
                            <option value="MT">Montana</option>
                            <option value="NE">Nebraska</option>
                            <option value="NV">Nevada</option>
                            <option value="NH">New Hampshire</option>
                            <option value="NJ">New Jersey</option>
                            <option value="NM">New Mexico</option>
                            <option value="NY">New York</option>
                            <option value="NC">North Carolina</option>
                            <option value="ND">North Dakota</option>
                            <option value="OH">Ohio</option>
                            <option value="OK">Oklahoma</option>
                            <option value="OR">Oregon</option>
                            <option value="PA">Pennsylvania</option>
                            <option value="RI">Rhode Island</option>
                            <option value="SC">South Carolina</option>
                            <option value="SD">South Dakota</option>
                            <option value="TN">Tennessee</option>
                            <option value="TX">Texas</option>
                            <option value="UT">Utah</option>
                            <option value="VT">Vermont</option>
                            <option value="VA">Virginia</option>
                            <option value="WA">Washington</option>
                            <option value="WV">West Virginia</option>
                            <option value="WI">Wisconsin</option>
                            <option value="WY">Wyoming</option>
                        </select>  -->
                </div>
                
                
                <br>
                
                <div>
                    <label> <b>City</b> </label> &nbsp;&nbsp;&nbsp;&nbsp;
                    <input class="form-control" id="city" name="city" readonly="readonly"/> 
                    <!-- <select id="city" name="city">
                        <option value="select" selected> Select </option>
                        <option>San Jose</option>
                        <option>Edison</option>
                        <option>San Diego</option>
                        <option>San Francisco</option>
                        <option>San Francisco</option>
                    
                    </select> -->
                </div>
                                
                <br>

                <div>
                    <label for="date"> <b>Customer Creation Date</b> </label>
                    <input class="form-control" type="date" name="customer_date" id="date" readonly>
                    <br>
                </div>

                <div>
                    <label for="operator_name"> <b>Operator Name</b> </label>
                    <input class="form-control" type="text" placeholder="Enter operator name" id="operator_name">
                    <br>
                </div>

                <div>
                    <label for="retailer_name"> <b>Retailer Name</b> </label>
                    <input class="form-control" type="text" placeholder="Enter retailer name" id="retailer_name">
                    <br>
                </div>

                <button type="submit" value="addcustomer" name="submit" class="btn btn-primary" id="btnRegister" style=" position: relative; margin-left: 250px;" action="admin.jsp"> Register </button>
				 <br><br> <p style="color:red;" align="center" id="error_message"></p>
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
 var modal = document.getElementById("myModal");

  
  var btn = document.getElementById("myBtn");

 
  var span = document.getElementsByClassName("close")[0];

 
  btn.onclick = function() {
    modal.style.display = "block";
  }
  
  span.onclick = function() {
	  modal.style.display = "none";
  }
  
    
   function formatDate(date) {
        var d = new Date(date),
            month = '' + (d.getMonth() + 1),
            day = '' + d.getDate(),
            year = d.getFullYear();

        if (month.length < 2)
            month = '0' + month;
        if (day.length < 2)
            day = '0' + day;

        return [year, month, day].join('-');
    }

	document.getElementById('date').value = formatDate(new Date());
  
 
 </script> 
</body>
</html>



