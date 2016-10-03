package com.jsoftwares.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/projects")
public class ProjectController {

	@RequestMapping("/add")
	public String project_add()
	{
		return "project_add";
	}
}
