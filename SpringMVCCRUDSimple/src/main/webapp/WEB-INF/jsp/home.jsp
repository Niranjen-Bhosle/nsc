<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login-success</title>

<style>
body {
  margin: 0%;
  font-family: "Lato", sans-serif;
}

.sidebar {
  margin: 0;
  padding: 0;
  top:25.7%;
  width: 200px;
  background-color:#5B84C4;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #04aa6d;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: grey;
  color: white;
}

div.content {
  margin-left: 120px;
  padding: 1px 16px;
  height: 320px;
  
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 100px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
 } 
  .Content{
  position:absolute;
  top:50%;
  left:25%;
  bottom:30%"}
}
</style>
</head>
<body style="background-color: Silver">
<div style="background-color:MidnightBlue;width:100%; position:fixed;left:0%; padding:3.28%">
<h1 style="color:white" align="center" ><font size="+3">Network Service Center</font>  </h1>
</div>

<div class="sidebar">
  <a href="homepage">Home</a>
  <a href="details">Add Client Details</a>
  <a href="empinfo">Add Employee Details</a>
  <a href="#ChangePassword">Change Password</a>
  <a href="revoke">Revoke Digital Signature</a>
  <a href="#Change_Profile">Change Profile</a>
  <a href="LogServiceProblem">Log Service Problem</a>
  <a href="#Check_Usage_Information">Check Usage Information</a>
  
</div>

<div class="Content">
    	<h3><font size="+2"><u>Please, Navigate through the  sidebar provided to exercise the desired option.</u></font></h3>
</div>
</body>
</html>