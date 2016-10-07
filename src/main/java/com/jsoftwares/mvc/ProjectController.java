package com.jsoftwares.mvc;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import data.entities.Project;
import data.services.ProjectService;

@Controller
@RequestMapping("/projects")
public class ProjectController {

	@Autowired
	private ProjectService projectService;

	@RequestMapping(value = "/{projectId}")
	public String findProject(Model model, @PathVariable("projectId") Long projectId) {
		model.addAttribute("project", this.projectService.find(projectId));
		return "project";
	}

	@RequestMapping(value = "find")
	public String find(Model model) {
		model.addAttribute("projects", this.projectService.findAll());
		return "projects";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addProject(Model model) {
		
		model.addAttribute("types", new ArrayList<String>(){{
			add("");
			add("Single Year");
			add("Multi Year");
		}});
		
		model.addAttribute("project", new Project());
		
		return "project_add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String saveProject(@ModelAttribute Project project) {
		System.out.println("Invoking saveProject");
		/**
		 * This will invoke the toString method
		 */
		System.out.print(project);
		return "project_add";
	}
}
