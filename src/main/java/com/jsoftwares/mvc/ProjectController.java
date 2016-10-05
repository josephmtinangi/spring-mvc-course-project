package com.jsoftwares.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public String addProject(HttpSession session) {
		session.setAttribute("token", "12345");
		System.out.println("Invoking addProject");
		return "project_add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String saveProject(HttpServletRequest request, HttpSession session) {
		System.out.println(session.getAttribute("token"));
		System.out.println(request.getParameter("name"));
		System.out.println("Invoking saveProject");
		return "project_add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST, params = { "project_type=single" })
	public String saveSingleProject() {
		System.out.println("Invoking saveSingleProject");
		return "project_add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST, params = { "project_type=single", "special" })
	public String saveSpecialProject() {
		System.out.println("Invoking saveSpecialProject");
		return "project_add";
	}
}
