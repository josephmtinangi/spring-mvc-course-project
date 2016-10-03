package com.jsoftwares.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/projects")
public class ProjectController {

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addProject() {
		System.out.println("Invoking addProject");
		return "project_add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String saveProject() {
		System.out.println("Invoking saveProject");
		return "project_add";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST, params={"project_type=single"})
	public String saveSingleProject() {
		System.out.println("Invoking saveSingleProject");
		return "project_add";
	}
}
