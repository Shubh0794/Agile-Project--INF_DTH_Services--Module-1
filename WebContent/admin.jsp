<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome ${type}, ${message}</h1>

<a href="OperatorRegistration.jsp">Add Operator</a>
<a href="RetailerRegistration.jsp">Add Retailer</a>
<a href="LoginRegister?type=operator&message=view">View Operator</a>
<div>${message}</div>
<div> ${userId}</div>
<div> ${password}</div>
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