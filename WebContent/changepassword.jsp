<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
        <link href="//code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" type="text/css" rel="stylesheet" media="all">
        <link href="//maxcdn.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet">
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
</head>
<body>
<form action="LoginRegister" method="post">
<div class="modal" id="password_modal">
    <div class="modal-header">
        <h3>Change Password <span class="extra-title muted"></span></h3>
    </div>
    <div class="modal-body form-horizontal">
    
    <input type="hidden" name="username" value="${userid}">
        <div class="control-group">
        	
            <label for="current_password" class="control-label">Current Password</label>
            <div class="controls">
                <input type="password" name="current_password">
            </div>
        </div>
        <div class="control-group">
            <label for="new_password" class="control-label">New Password</label>
            <div class="controls">
                <input type="password" name="new_password">
            </div>
        </div>
        <div class="control-group">
            <label for="confirm_password" class="control-label">Confirm Password</label>
            <div class="controls">
                <input type="password" name="confirm_password">
            </div>
        </div>      
    </div>
    <div class="modal-footer">
      <!--   <button href="#" class="btn" data-dismiss="modal" aria-hidden="true">Close</button> -->
        <button href="#" class="btn btn-primary" id="password_modal_save" type="submit" name="submit" value="cpwd">Save changes</button>
    </div>
</div>
</form>

</body>
</html>