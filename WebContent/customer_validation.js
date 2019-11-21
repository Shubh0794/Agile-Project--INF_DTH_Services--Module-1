//Customer Validation Function : 

function validate_customer() {
  var invalid = false;
  var message = "";
  var ret_first_name = document.forms["customer_regform"]["customer_firstname"];
  var ret_last_name = document.forms["customer_regform"]["customer_lastname"];
  var ret_email_id = document.forms["customer_regform"]["customer_email"];
  var ret_contact = document.forms["customer_regform"]["customer_phone"];
  var ret_address1 = document.forms["customer_regform"]["customer_address1"];
  var ret_address2 = document.forms["customer_regform"]["customer_address2"];
  var ret_landmark = document.forms["customer_regform"]["customer_landmark"];
  var ret_pincode = document.forms["customer_regform"]["customer_zipcode"];
  var ret_state = document.forms["customer_regform"]["state"];
  var ret_city = document.forms["customer_regform"]["city"];
  var ret_customercreationdate = document.forms["customer_regform"]["customer_date"];
  var ret_operatorname = document.forms["customer_regform"]["operator_name"];
  var ret_retailername = document.forms["customer_regform"]["retailer_name"];



  if (ret_first_name.value == "" || !isNaN(ret_first_name.value) || ret_first_name.value == null){
     invalid = true;
     message += "Please enter a valid  First Name <br> ";
     ret_first_name.focus();
   }

   if (ret_last_name.value == "" || !isNaN(ret_last_name.value) || ret_last_name.value == null){
      invalid = true;
      message += "Please enter a valid  Last Name <br> ";
      ret_last_name.focus();
    }

    if (ret_email_id.value == "" || ret_email_id.value == null){
      invalid = true;
      message += "Please Enter a a valid Email id   <br>";
      ret_email_id.focus();
    }
    if (ret_contact.value == "" || isNaN(parseInt(ret_contact.value)) || ret_contact.value == null){
      invalid = true;
      message += "Please Enter a valid Contact number  <br>";
      ret_contact.focus();
    }
  if (ret_address1.value == "" || ret_address1.value == null){
    invalid = true;
    message += "Please Enter a valid Address 1 <br>";
    ret_address1.focus();
  }

  if (ret_address2.value == "" || ret_address2.value == null ){
    invalid = true;
    message += "Please Enter a valid Address 2 <br>";
    ret_address2.focus();
  }
  if (ret_pincode.value == "" || isNaN(parseInt(ret_pincode.value)) || ret_pincode.value == null){
    invalid = true;
    message += "Please Enter a valid pincode <br>";
    ret_pincode.focus();
  }
  if (ret_city.value == "" || ret_city.value == "select" ||ret_city.value == null) {
    invalid = true;
    message += "Please Enter a valid City <br>";
    ret_city.focus();
  }
  if (ret_state.value == "" || ret_state.value == "select" ||ret_state.value == null){
    invalid = true;
    message += "Please Enter a valid State <br>";
    ret_state.focus();
  }
  if (ret_customercreationdate.value == "" || isNaN(parseInt(ret_customercreationdate.value)) || ret_customercreationdate.value == null){
  invalid = true;
  message += "Please Enter a valid Customer Creation Date <br>";
  ret_customercreationdate.focus();
}
if (ret_operatorname.value == "" || !isNaN(ret_operatorname.value) || ret_operatorname.value == null){
  invalid = true;
  message += "Please Enter a valid Operator Name <br>";
  ret_operatorname.focus();
}
if (ret_retailername.value == "" || !isNaN(ret_retailername.value) || ret_retailername.value == null ){
  invalid = true;
  message += "Please Enter a valid Retailer name  <br>";
  ret_retailername.focus();
}

  if (invalid == true){
    // window.alert(message);
    document.getElementById("error_message").innerHTML = message;
    return false;
  }
  else if (invalid == false) {
    document.getElementById("error_message").innerHTML = "Registration Successful";
  }



}

// AutoFill ZIPCODE :

function fill_zip(){

var ret_zipcode = document.getElementById("zipcode");

if (ret_zipcode.options[ret_zipcode.selectedIndex].value == 10038) {
	customer_regform.city.value = "New York City";
	customer_regform.state.value = "New York";
}
if (ret_zipcode.options[ret_zipcode.selectedIndex].value == 60007) {
	customer_regform.city.value = "Chicago";
	customer_regform.state.value = "Illinois";
}
if (ret_zipcode.options[ret_zipcode.selectedIndex].value == 90001) {
	customer_regform.city.value = "Los Angeles";
	customer_regform.state.value = "California";
}
if (ret_zipcode.options[ret_zipcode.selectedIndex].value == 94016) {
	customer_regform.city.value = "San Francisco";
	customer_regform.state.value = "California";
}
if (ret_zipcode.options[ret_zipcode.selectedIndex].value == 33101) {
	customer_regform.city.value = "Miami";
	customer_regform.state.value = "Florida";
}
if (ret_zipcode.options[ret_zipcode.selectedIndex].value == 08817) {
	customer_regform.city.value = "Edison";
	customer_regform.state.value = "New Jersey";
}
if (ret_zipcode.options[ret_zipcode.selectedIndex].value == 88901) {
	customer_regform.city.value = "LasVegas";
	customer_regform.state.value = "Nevada";
}
}

