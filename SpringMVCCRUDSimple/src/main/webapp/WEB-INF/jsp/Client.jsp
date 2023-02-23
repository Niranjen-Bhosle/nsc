<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Client Details</title>
<style type="text/css">
	label {
		display: inline-block;
		width: 200px;
		margin: 5px 5px 5px 5px;
		text-align: left;
	}
	input[type=text],  select {
		width: 200px;
	}
	
	input[type=checkbox] {
		display: inline-block;
		margin-right: 190px;
	}
	
	.content {
  
  column-count: 2;
  column-gap: 40px;
	}
</style>
</head>

<body>
<%@include file="home.jsp" %>

<div style="position:absolute;top:30%;left:47%">	
 <h3> <font size="+2.8"> Client Details</font></h3>
 <h3 style="background-color:#5B84C4;position:absolute;width:750px;right:-200%" align="center"> <font size="+1.8"> Contact Detail</font></h3>
 </div>
	<div style="position:absolute;top:50%;left:10%;bottom:30%" class="content">
	
		<form:form action="details" method="post" modelAttribute="user">
		   
		    <form:label path="clientname">Client Name:</form:label>
		    <form:select path="clientname" items="${ClientList}" /><br/>
		    <form:label path="contactperson">Contact Person:</form:label>
			<form:input path="contactperson"/><br/>		    
			<form:label path="phoneno">LL/Phone No:</form:label>
			<form:input path="phoneno"/><br/>
			<form:label path="mobileno">Mobile No:</form:label>
			<form:input path="mobileno"/><br/>			
			<form:label path="emailid">Email Id:</form:label>
			<form:input path="emailid"/><br/>
			<form:label path="website">Website:</form:label>
			<form:input path="website"/><br/>
			<form:label path="street1">Street 1:</form:label>
			<form:textarea path="street1" cols="25" rows="3"/><br/>
			<form:label path="street2">Street 2:</form:label>
			<form:input path="street2"/><br/>			
			<form:label path="state">State:</form:label>
			<form:input path="state"/><br/>
			<form:label path="zipcode">Zip Code:</form:label>
			<form:input path="zipcode"/><br/>					
			<form:label path="country">Country:</form:label>
			<form:input path="country"/><br/>
			
			<div style="background-color:#5B84C4;position:absolute;width:29%;padding:1%;top:65%;left:36%">
			<form:button>ADD</form:button>
			<form:button formaction="UPDATE" formmethod="get">UPDATE</form:button>
			<form:button formaction="reset" formmethod="get">RESET</form:button>
			<form:button formaction="cancel" formmethod="get">CANCEL</form:button></div>
			
		
		</form:form>
	</div>
</body>
</html>

		