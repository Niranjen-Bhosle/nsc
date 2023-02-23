    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
   <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
   
	<body>
	<%@include file="home.jsp" %>
	<div style="overflow:scroll;width:85%;height:60%;position:absolute;left:15%;bottom:10%">
	<div align="center"><h1>Client Details Listed Below</h1></div>
		<table  align="center"  border="2" width="20%" cellpadding="5">
	<tr><th>Client Name</th><th>Contact Person</th><th>Phoneno</th><th>Mobileno</th><th>EmailID</th><th>Website</th><th>Street1</th><th>Street2</th><th>State</th><th>Zipcode</th><th>Country</th><th>Update</th></tr>
    <c:forEach var="user" items="${list}"> 
    <tr>
    <td>${user.clientname}</td>
    <td>${user.contactperson}</td>
    <td>${user.phoneno}</td>
    <td>${user.mobileno}</td>
    <td>${user.emailid}</td>
    <td>${user.website}</td>
    <td>${user.street1}</td>
    <td>${user.street2}</td>
    <td>${user.state}</td>
    <td>${user.zipcode}</td>
    <td>${user.country}</td>
    <td><a href="edituser/${user.mobileno}">Update</a></td>
    
    </tr>
    </c:forEach>
   
    </table>
    </div>
    </body>
    
    
    <br/>
   