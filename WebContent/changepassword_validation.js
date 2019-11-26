//Operator Validation Function :

function validate_changepassword() {
  var invalid = false;
  var message = "";
  var cp_currentpassword = document.forms["changepassword_regform"]["current_password"];
  var cp_newpassword = document.forms["changepassword_regform"]["new_password"];
  var cp_confirmpassword = document.forms["changepassword_regform"]["confirm_password"];
  
  
  if(cp_currentpassword.value == "" || cp_currentpassword.value == null ){
	  invalid = true;
	  message += "Please Enter Current Password <br>";
  }
  
  if(cp_newpassword.value == "" || cp_newpassword.value == null ){
	  invalid = true;
	  message += "Please Enter New Password <br>";
  }
  
  if(cp_confirmpassword.value == "" || cp_confirmpassword.value == null ){
	  invalid = true;
	  message += "Please Confirm the New Password <br>";
  }
  

    
  if (cp_newpassword.value == cp_currentpassword.value){
	  invalid = true;
	  message += "New Password cannot be same as Current Password <br>";
  }
  
  if(cp_newpassword.value != cp_confirmpassword.value){
	  invalid = true;
	  message += "Confirmed Password does not match New Password <br>";
  }
  
  
  if (invalid == true){
    // window.alert(message);
    document.getElementById("error_message").innerHTML = message;
    return false;
  }
  else if (invalid == false) {
    document.getElementById("error_message").innerHTML = "Password Changed Successfully";
  }



}
