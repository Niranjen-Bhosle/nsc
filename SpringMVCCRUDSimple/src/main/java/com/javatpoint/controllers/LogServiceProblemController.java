package com.javatpoint.controllers;   
import java.util.List;  
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;  
import org.springframework.web.bind.annotation.PathVariable;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;
import com.javatpoint.dao.LogServiceProblemDaoImpl;
import com.javatpoint.beans.LogServiceProblem;




@Controller
@RequestMapping(value = "/LogServiceProblem")

public class LogServiceProblemController {  
    @Autowired  
    LogServiceProblemDaoImpl LogServiceProblemDao;//will inject dao from xml file  
       
	@RequestMapping(method = RequestMethod.GET)
    public String LoginMap(Map<String, Object> model) {  
    	
			LogServiceProblem LogServiceProblemForm = new LogServiceProblem();		
			model.put("LogServiceProblemForm", LogServiceProblemForm);

    	return "LogServiceProblem"; 
    }  
	
	
	@RequestMapping(method = RequestMethod.POST)
	public String processLogServiceProblem(@ModelAttribute("LogServiceProblemForm") LogServiceProblem LogServiceProblemForm, 
			Map<String, Object> model) {
		
		// implement your own registration logic here...
		
		// for testing purpose:
		System.out.println("username: " + LogServiceProblemForm.getName());
		System.out.println("password: " + LogServiceProblemForm.getOrganization());
		
		int flag= LogServiceProblemDao.saveLogServiceProblemDetails(LogServiceProblemForm);
		if(flag>0)
			return "LogServiceProblemsuccess";
		else	
      return "LogServiceProblem";
	} 

}  