<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<img src="./images/banner.png" alt="Godzilla">

<%
	Date d = new Date();
	System.out.println("Current Date="+d);
%>

    <form action = "OPSWelcomeServlet" method = "POST">
       
       

	<table>
       <tr>
			<td>First Name:</td> <td><input type = "text" name = "first_name"></td>
		</tr>
        <tr>
			<td>Last Name:</td> <td><input type = "text" name = "last_name"></td>
       	</tr>
       
	   <tr>
       <td>Gender: </td> 
       <td>
        <select name="gender">
  			<option value="Male">Male</option>
  			<option value="Female">Female</option>
		</select>
       <td>
       </tr>
	   
	   <tr>
	   <td></td>
	   <td></td>
	   </tr>
	   <tr>
	   <td><input type = "Submit" value = "Kaboom" /> </td>
	   <td><input type = "Reset" value = "Reset" /> </td>
	   </tr>
	   
	</table>	   
       
    </form>


</body>
</html>