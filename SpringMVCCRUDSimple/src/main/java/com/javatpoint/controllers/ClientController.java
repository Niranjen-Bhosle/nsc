package com.javatpoint.controllers;   
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;  
import org.springframework.web.bind.annotation.PathVariable;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.javatpoint.beans.User;
import com.javatpoint.dao.ClientDaoImpl;
 
@Controller  
public class ClientController { 
	@Autowired
	ClientDaoImpl clientDao;
	@RequestMapping(value="/")
	public ModelAndView test(HttpServletResponse response) throws IOException{
		return new ModelAndView("hme");
	}

	@RequestMapping(value = "/details", method = RequestMethod.GET)
	public String viewClientForm(Model model) {
		User user = new User();
		model.addAttribute("user", user);
	
		List<String> ClientList = new ArrayList<>();
		ClientList.add("Capgemini");
		ClientList.add("Mindtree");
		ClientList.add("Infosys");
		model.addAttribute("ClientList", ClientList);
		return "Client";
	}
	
	@RequestMapping(value = "/details", method = RequestMethod.POST)
	public String doRegistration(@ModelAttribute("user") User user) {
		 System.out.println(user);
		 int flag= clientDao.addClientDetails(user);
			if(flag>0)
                 return "DetailsSuccess";
			else
				return "Client";
	}
	
	 @RequestMapping("/viewclient")  
	    public String viewemp(Model m){  
	        List<User> list=clientDao.getclient();  
	        m.addAttribute("list",list);
	        return "viewclient"; }
	
	@RequestMapping(value="/edituser/{mobileno}")  
    public String edit(@PathVariable String mobileno , Model m){  
        User user=clientDao.getClientBymobileno(mobileno);  
        m.addAttribute("command",user);
        return "clientupdateform";  
    }  
    /* It updates model object. */  
    @RequestMapping(value="/update", method = RequestMethod.POST)  
    public String update(@ModelAttribute("user") User user){  
        clientDao.update(user);  
        return "redirect:/viewclient";
	
    }
	
	@RequestMapping(value = "/reset", method = RequestMethod.GET)
	public String resetClientForm(Model model) {
		User user = new User();
		model.addAttribute("user", user);
	
		List<String> ClientList = new ArrayList<>();
		ClientList.add("Capgemini");
		ClientList.add("Mindtree");
		ClientList.add("Infosys");
		model.addAttribute("ClientList", ClientList);
		return "Client";
	}  
	
	@RequestMapping(value = "/cancel", method = RequestMethod.GET)
	public ModelAndView CancelClientForm() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("home");
		return mav;
	}   
	@RequestMapping(value="/UPDATE",method = RequestMethod.GET)  
	public String viewclient(Model m){  
        List<User> list=clientDao.getclient();  
        m.addAttribute("list",list);
        return "viewclient"; }
	
	
	
}  