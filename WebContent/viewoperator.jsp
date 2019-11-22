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

<table>
<tr>
<th></th>
<th></th>
<th>Operator Id</th>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Phone</th>
<th>Shift Start Time</th>
<th>Shift End Time</th>
<th>Total Customer</th>
</tr>
<c:forEach items="${operatorsList}" var="user">
<tr>
<td><a href='LoginRegister?type=operator&message=edit&id=${user.userId}'>Edit</a></td>
<td><a href='LoginRegister?type=operator&message=delete&id=${user.userId}'>Delete</a></td>
<td>${user.userId}</td>
<td>${user.firstName}</td>
<td>${user.lastName}</td>
<td>${user.email}</td>
<td>${user.phone}</td>
<td>${user.shiftStart}</td>
<td>${user.shiftEnd}</td>
<td>${user.totalCustomer}</td>

</tr>
</c:forEach>
</table>
<div>${message}</div>
</body>
</html>