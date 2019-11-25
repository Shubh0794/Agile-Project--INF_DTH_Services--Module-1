<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body>

<%
	if(session.getAttribute("username") == null){
		response.sendRedirect("login.jsp");
	}
%>
<h1>Welcome ${type}, ${message}</h1>

<a href="OperatorRegistration.jsp">Add Operator</a>
<!-- <a href="RetailerRegistration.jsp">Add Retailer</a> -->
<a href="LoginRegister?type=operator&message=view">View Operator</a>
<a href="LoginRegister?type=logout">Logout</a>
<div>${message}</div>
<div> ${userId}</div>
<div> ${password}</div>





  </body>
  </html>
<%-- 
<%
String name = request.getParameter("userId");
String password = request.getParameter("password");
%>
<%
if(!(name == null || (name.equals(""))) && !(password == null || (password.equals("")))){
%>
<div>
<label>New Operator's Id: <%= name %></label>
</div>
<div>
<label>Password: <%= password %> </label>
</div>
<%
}
%> --%>

</html>