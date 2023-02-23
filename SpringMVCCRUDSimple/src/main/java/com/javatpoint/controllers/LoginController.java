package com.javatpoint.controllers;   

import java.util.Map;
import javax.swing.JOptionPane; 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javatpoint.beans.Login;
import com.javatpoint.dao.EmpDao; 

@Controller 

public class LoginController {  
	 @RequestMapping(value="/homepage",method = RequestMethod.GET)
 	public String homeMap(Map<String, Object> model) {
 		//Login loginForm = new Login();		
 		//model.put("loginForm", loginForm);
 		return "home";   
	 }
        @RequestMapping(value="/login",method = RequestMethod.GET)
    	public String LoginMap(Map<String, Object> model) {
    		//Login loginForm = new Login();		
    		//model.put("loginForm", loginForm);
    		return "Loginpage";		
    }
        @RequestMapping(value="/home",method = RequestMethod.POST)
    	public String processLogin(@RequestParam("user_name") String username ,@RequestParam("pass") String pass) {       	
        	
              if(username.equals("niranjan") && pass.equals("123"))
             {
                 
            	return "home";
            	
             }
             else
             {
                   JOptionPane.showMessageDialog(null,"Wrong User name Or Password");
                  return "Loginpage";
                     
             }

        }
} 		
        


 
        
        
        
        
        
        
        
        
        
        
        
        
        
      
 