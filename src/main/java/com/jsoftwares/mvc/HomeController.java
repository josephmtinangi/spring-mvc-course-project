package com.jsoftwares.mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import data.entities.Project;
import data.services.ProjectService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@RequestMapping(value="/")
	public String goHomeAgain(Model model, @ModelAttribute("project") Project project)
	{
		model.addAttribute("currentProject", project);
		return "home";
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	/*
	@RequestMapping("/")
	public String goHome(Model model) {
		
		Project project = new Project();
		project.setName("Galaxisize");
		project.setDescription("This is a simple project sponsored by NASA");
		
		model.addAttribute("currentProject", project);
		
		return "welcome";
	}
	*/

}
