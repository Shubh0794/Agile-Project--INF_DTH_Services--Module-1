<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
   
   
    <script src="customer_validation.js"></script>

<title>Update Customer Information</title>
</head>
<body>

	  <h2 style="margin: 10px 710px;"> Infinity Customer </h2>

      <div class="jumbotron" style="margin:25px 600px 100px;">
        
	<form name="editInformation" method = "post" action = "LoginRegister" onsubmit="validate_customer(); return false">
	
                <div>
                    <label for="firstname"> <b>First Name</b> </label>
                    <input class="form-control" type="text" placeholder="Enter first name" name="customer_firstname" id="firstname"
                    value="${customer.firstName}"/>
                    <br>
                </div>

                <div>
                    <label for="lastname"> <b>Last Name</b> </label>
                    <input class="form-control" type="text" placeholder="Enter last name" name="customer_lastname" id="lastname"
                    value="${customer.lastName}"/>
                    <br>    
                </div>

                <div class="form-group">
                    <label for="email"> <b>Email</b> </label>
                    <input type="email" class="form-control" id="email" name="customer_email" aria-describedby="emailHelp" placeholder="Enter email"
                    value="${customer.emailId}"/>
                </div>

                <div>
                    <label for="phone"> <b>Phone Number</b> </label>
                    <input class="form-control" type="text" placeholder="Enter phone number" name="customer_phone" id="phone" value="${customer.phone}"/>
                    <br>
                </div>

                <div class="form-group">
                    <label for="address1"><b>Address 1</b></label>
                    <textarea class="form-control" id="address1" name="customer_address1" placeholder="Enter primary address.." rows="3" 
                    value = "${customer.address}"></textarea>
                </div>

                <div class="form-group">
                    <label for="address2"><b>Address 2</b></label>
                    <textarea class="form-control" id="address2" name="customer_address2" placeholder="Enter secondary address.." rows="3" 
                    value = "${customer.address2}"></textarea>
                </div>

                <div>
                    <label for="landmark"> <b>Landmark</b> </label>
                    <input class="form-control" type="text" placeholder="Enter landmark" name="customer_landmark" id="landmark" value = "${customer.landMark}"/>
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
               
                    <input class="form-control" type="hidden" name="customer_UserId" id="userId" value="${customer.userId}"/>
                    <br>
                </div>
               

                <button type="submit" value="updatecustomer" name="submit" class="btn btn-primary" id="btnRegister" 
                style=" position: relative; margin-left: 250px; " action="admin.jsp"> Update </button>
              

            </form>
        </div>
    </div>
    
</body>
</html>

<script type="text/javascript">

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