<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Network Service Center Login Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
</head>


<body  style="background-color:silver ">
 <div style="background-color:MidnightBlue;width:100%; position:absolute;left:0%; padding:2.23%">
      <h1 style="color:white" align="center" ><font size="+3">Network Service Center</font>  </h1>>
 </div>
 <div  class="container">
            <div  class="row">  
            <div >
            <form action="home" method="POST">
                       <hr style="width: 0.20%; height:490px; background:black;position:absolute;top:20%;left:35%"/> 
                       <hr style="width: 0.23%; height:490px; background:black;position:absolute;top:20%;right:36%"/>
                       <hr style="width:100%;height:2px; background:black;position:absolute;bottom:-1%;left:0%"> 
            
                      <div  style="background-color:DeepSkyBlue;font:16px;font-family:AgencyFB;padding-right:10.8%;padding-left:1.8%;position:absolute;top:24.4%;left:36%;bottom:26%"  class="form-group">
                       <h2 > <u>User Login</u> </h2>
                       
                       <br>
                        <i class="glyphicon glyphicon-user"></i>
                       <label><b>Username:</b></label>
                       <input type="text" name="user_name" class="form-control">
                       <br> 
                       <i class='fas fa-lock'></i>                  
                       <label><b>Password:</b></label>
                       
                       <input type="password" name="pass" class="form-control" id="password">
                       <i class="fa-solid fa-eye" id="eye" style="position:absolute;top:63.5%;right:42%;cursor: pointer;"></i>
                        <script>  const passwordInput = document.querySelector("#password")
                       const eye = document.querySelector("#eye")
                       eye.addEventListener("click", function(){
                       this.classList.toggle("fa-eye-slash")
                       const type = passwordInput.getAttribute("type") === "password" ? "text" : "password"
                       passwordInput.setAttribute("type", type)});
        </script>  
                      
                      
                       <br>
                      
                       <label> <b>Role:</b></label>
                       <select>
                       <option value="Admin">Admin</option>
                       <option value="Others">Others</option>                      
                       </select>
                       <br>                                
                      <br>
                      <br>
                      <button type="login" class="btn btn-success" style="position:absolute;top:88%;left:83%"><b>Login</b></button>
                                       
                      </div> 
                         
                     
                     <div style="position:absolute;top:71%;left:38%;" class="form-group">
                     <h3><font size="-1">> All fields are mandatory and cannot be blank.</font></h3>
                     </div>
                     
                      <div style="position:absolute;top:76.5%;left:36.5%;" class="form-group">
                  <h4><font size="-1">> For forgotten username and password contact Manager.</font></h4>
                </div>   
                
                
              </form>
           </div>      
           </div>  
           </div>
          
</body>
</html>