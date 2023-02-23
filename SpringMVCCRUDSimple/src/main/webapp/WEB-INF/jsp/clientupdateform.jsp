<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">


        <%@include file="home.jsp" %>
        <div style="position:absolute;top:30%;left:35%" align="center">
		<h1><font size="+3"><u>Update Client Details Carefully!!</u></font></h1>
       <form:form method="POST" action="/SpringMVCPagination/update">  
      	 <table> 
         <tr>  
          <td>Client Name : </td> 
          <td><form:input path="clientname"  /></td>
         </tr>  
         <tr>  
          <td>Contact Person :</td>  
          <td><form:input path="contactperson" /></td>
         </tr> 
         <tr>  
          <td>Phone No :</td>  
          <td><form:input path="phoneno" /></td>
         </tr> 
         <tr>  
          <td>Mobile No :</td>  
          <td><form:input path="mobileno" /></td>
         </tr> 
         <tr>  
          <td>Email ID :</td>  
          <td><form:input path="emailid" /></td>
         </tr> 
         <tr>  
          <td>Website :</td>  
          <td><form:input path="website" /></td>
         </tr> 
         <tr>  
          <td>Street1 :</td>           
          <td><form:textarea path="street1" cols="21" rows="3"/></td>
         </tr> 
         <tr>  
          <td>Street2 :</td>  
          <td><form:input path="street2" /></td>
         </tr> 
         <tr>  
          <td>State :</td>  
          <td><form:input path="state" /></td>
         </tr> 
         <tr>  
          <td>Zipcode :</td>  
          <td><form:input path="zipcode" /></td>
         </tr>
         <tr>  
          <td>Country :</td>  
          <td><form:input path="country" /></td>
         </tr>  
         
         <tr>  
          <td><br><input type="submit" style="font-size: 16px;border-radius:15px;position :absolute;left:35%"  value="UPDATE" /></td>  
         </tr>  
        </table>
       </form:form>  
       </div>
