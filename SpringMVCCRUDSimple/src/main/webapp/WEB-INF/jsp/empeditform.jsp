<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

		<h1>Edit Employee</h1>
       <form:form method="POST" action="/SpringMVCCRUDSimple/editsave">  
      	<table >  
      	<tr>
      	<td></td>  
         <td><form:hidden  path="contactperson" /></td>
         </tr> 
         <tr>  
          <td>Client Name : </td> 
          <td><form:input path="clientname"  /></td>
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
          <td> </td>  
          <td><input type="submit" value="Edit Save" /></td>  
         </tr>  
        </table>  
       </form:form>  
