<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Details Success</title>
</head>
<body>
<%@include file="home.jsp" %>
 <div style="position:absolute;top:30%;left:40%" align="center">
        <table border="0">
            <tr>
                <td colspan="2" align="center"><h2>Client Details Added Successfully</h2></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <h3> Here's the review of your details:</h3>
                </td>
            </tr>
            <tr>
                <td>Client Name:</td>
                <td>${user.clientname}</td>
            </tr>
            <tr>
                 <td>Contact Person:</td>
                <td>${user.contactperson}</td>
                
            </tr>
            <tr>
                <td>LL/Phone No:</td>
                <td>${user.phoneno}</td>
            </tr>
            <tr>
                <td>Mobile No:</td>
                <td>${user.mobileno}</td>
            </tr>
            <tr>                              
                <td>Email:</td>
                <td>${user.emailid}</td>
            </tr>         
            <tr>
                 <td>Website:</td>
                <td>${user.website}</td>
                
            </tr>         
            <tr>
                 <td>Street1:</td>
                <td>${user.street1}</td>
                
            </tr>
            <tr>
                 <td>Street2:</td>
                <td>${user.street2}</td>
                
            </tr>
            <tr>
                 <td>State:</td>
                <td>${user.state}</td>
                
            </tr>
            <tr>
                 <td>Zip Code:</td>
                <td>${user.zipcode}</td>
                
            </tr>
            <tr>
                 <td>Country:</td>
                <td>${user.country}</td>
                
            </tr>
 
        </table>
    </div>

</body>
</html>