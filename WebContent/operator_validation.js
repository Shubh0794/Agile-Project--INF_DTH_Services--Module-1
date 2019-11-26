//Operator Validation Function :

function validate_operator() {
  var invalid = false;
  var message = "";
  var op_first_name = document.forms["operator_regform"]["operator_firstname"];
  var op_last_name = document.forms["operator_regform"]["operator_lastname"];
  var op_email_id = document.forms["operator_regform"]["operator_email"];
  var op_phone = document.forms["operator_regform"]["operator_phone"];
  var op_max_customers = document.forms["operator_regform"]["operator_maxCustomers"];


  if (op_first_name.value == "" || !isNaN(op_first_name.value) || op_first_name.value == null){
     invalid = true;
     message += "Please enter a valid  First Name <br> ";
     op_first_name.focus();
   }

   if (op_last_name.value == "" || !isNaN(op_last_name.value) || op_last_name.value == null){
      invalid = true;
      message += "Please enter a valid  Last Name <br> ";
      op_last_name.focus();
    }

    if (op_email_id.value == "" || op_email_id.value == null){
      invalid = true;
      message += "Please Enter a a valid Email id   <br>";
      op_email_id.focus();
    }
    if (op_phone.value == "" || isNaN(parseInt(op_phone.value)) || op_phone.value == null){
      invalid = true;
      message += "Please Enter a valid Phone Number  <br>";
      op_phone.focus();
    }
    if (op_max_customers.value == "" || isNaN(parseInt(op_max_customers.value)) || op_max_customers.value == null){
      invalid = true;
      message += "Please Enter a valid Max Number of Customers  <br>";
      op_max_customers.focus();
    }



  if (invalid == true){
    // window.alert(message);
    document.getElementById("error_message").innerHTML = message;
    return false;
  }
  else  {
    document.getElementById("error_message").innerHTML = "Registration Successful";
    return true;
  }

  


}
