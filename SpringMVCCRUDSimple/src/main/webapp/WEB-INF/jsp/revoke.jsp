<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  <%@include file="home.jsp" %>
  </head>
  <body>
    <div style="position:absolute;top:30%;left:40%;bottom:30%">
	<form:form action="revoke" method="post" modelAttribute="revokeForm" >
		
	    
    	<h1>Revoke Your Digital Signature</h1>
    	
    	<br><br>
      <table>
        <tr>
          <th>Name</th>
          <td><form:input path="name"/></td>
        </tr>
        <tr>
          <th>Organization</th>
          <td><form:input path="organization"/></td>
        </tr>
        <tr>
          <th>Designation</th>
          <td><form:input path="designation"/></td>
        </tr>
        <tr>
          <th>Reason</th>
          <td><form:input path="reason"/></td>
        </tr>
        <tr>
          <th>Description</th>
          <td><form:input path="description"/></td>
        </tr>
      </table>
      <div class="submit-buttons"><br/>
        <input type="submit" value="Revoke">
         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <input type="submit" value="Cancel">
      </div>  
   
    </form:form>
	</div>
  </body>
</html>