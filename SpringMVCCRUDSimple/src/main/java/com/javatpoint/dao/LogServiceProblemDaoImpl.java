package com.javatpoint.dao;

  
 
import org.springframework.jdbc.core.JdbcTemplate;  
import com.javatpoint.beans.LogServiceProblem;

 

public class LogServiceProblemDaoImpl {

	JdbcTemplate template;

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	
	public int saveLogServiceProblemDetails(LogServiceProblem LogServiceProblem){  
	    String sql="insert into logserviceproblem(name,organization,designation,logserviceproblem,description) values('"+LogServiceProblem.getName()+"','"+LogServiceProblem.getOrganization()+"','"+LogServiceProblem.getDesignation()+"','"+LogServiceProblem.getLogserviceproblem()+"','"+LogServiceProblem.getDescription()+"')";  
	    return template.update(sql);  
	} 
	
}
