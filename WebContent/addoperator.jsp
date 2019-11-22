<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Operator</title>
</head>
<body>
	<div align ="center">
          
            
            <h3>Add New Retailer</h3>
            <div>
                <form action="LoginRegister" method="post">
                    <table >
                        <tr>
                            <td> First Name: </td>
                            <td> <input type="text" name="fname"> </td>
                        </tr> 
                        
                        <tr> 
                            <td> Last Name: </td>
                            <td> <input type="text" name="lname"> </td>
                        </tr>
                 
                        <tr>
                                <td> Email: </td>
                                <td> 
                                    <input type="email" name="email">
                                </td>
                        </tr>

                        <tr>
                                <td> Phone: </td>
                                <td> 
                                    <input type="number" name="phone"> 
                                </td>
                        </tr>
                        
                		<tr>
                            <td> Shift Start Time: </td>
                            <td>
                                    <select id="starttime" name="starttime">
                                            <option value="0" selected> Select </option>
                                            <option value="8:30">8:30</option>
                                            <option value="2:30">2:30</option>
                                            
                                    </select>				
                            </td>
                        </tr>
                        <tr>
                            <td> Shift End Time: </td>
                            <td>
                                    <select id="endtime" name="endtime">
                                            <option value="0" selected> Select </option>
                                            <option value="2:00">2:00</option>
                                            <option value="20:00">20:00</option>
                                            
                                    </select>				
                            </td>
                        </tr>
                         <tr>
                                <td> Max Customer: </td>
                                <td> 
                                    <input type="text" name="maxcustomer"> 
                                </td>
                        </tr>
                        <tr>
                        	<input type="hidden" name="userid" value=""/>
                        </tr>
                    </table>
                    <br> <br>
                    <div>
                       <input type="submit" value="addoperator" name="submit">
                    </div>
                </form>
            </div>
            
        </div>
</body>
</html>