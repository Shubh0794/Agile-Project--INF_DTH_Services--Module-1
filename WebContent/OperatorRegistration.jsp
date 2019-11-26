<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
	<script src="operator_validation.js"></script>
	
    <title>Operator Registration</title>


</head>

<body>
<%
	if(session.getAttribute("username") == null){
		response.sendRedirect("login.jsp");
	}
%>
    <div class="container">
		
       	<form role="form" action="LoginRegister" method="post" name="operator_regform" onsubmit="return validate_operator()">
       			<div class="card-header" style="width: 65%"> <h2> Infinity Operator </h2> </div>
           	
                <div class="card-body" style="width: 65%; background-color: rgba(0,0,0,.03);">
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
                    <input type="time" name="operator_shiftStartTime" id="shiftStartTime" onchange="update_date();">
                   
                  </div>
                  
                  <div>
                    <label for="shiftEndTime"> <b>Shift End Time</b> </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="time" name="operator_shiftEndTime" id="shiftEndTime" readonly>
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
                    
                    <br><br> <p style="color:red;" align="center" id="error_message"></p>
           
              </form>
    </div>

</body>

</html>

<script type="text/javascript">

   /*  function test(){
        alert('this is working!!');
    } */
    
    
    
    function update_date()
    {
    var mydate = document.getElementById("shiftStartTime");
    // document.getElementById("date_message").innerHTML =  parseInt(mydate.value.substring(3,5)) ;
    var hours = parseInt(mydate.value.substring(0,2));
    var mins = mydate.value.substring(3,5);

    var end_hours = hours + 8;
    if (end_hours >= 24){
      end_hours = end_hours - 24;
    }
    if(end_hours < 10 ){
      end_hours = "0" + end_hours.toString()
    }
    else {
    end_hours = end_hours.toString();
    }

    var new_endtime = end_hours + ":" + mins ;
    document.getElementById("shiftEndTime").value = new_endtime;

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
    
    
    
    /* function OutputTime(intime) {
            var p1 = parseInt(intime.slice(0, 2));
            console.log(p1);
            var p2 = parseInt(intime.slice(3, 5));
            console.log(p2);

            return [p1+8, p2].join('-');
        }

    function setValue(){
        var inputTime = document.getElementById('shiftStartTime').value;
        console.log(inputTime);
        document.getElementById('shiftEndTime').value = OutputTime(inputTime); //OutputTime(inputTime);
        console.log(document.getElementById('shiftEndTime').value);
    }

        */
	

        
    
        
        
        

</script>