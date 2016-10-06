package com.jsoftwares.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import data.entities.Resource;

@Controller
@RequestMapping("/resource")
public class ResourceController {

	@RequestMapping("/add")
	public String add(Model model) {
		model.addAttribute("resource", new Resource());
		return "resource_add";
	}

	@RequestMapping("/save")
	public String save(@ModelAttribute Resource resource) {
		System.out.println("Invoking the save() method");
		System.out.print(resource);
		return "resource_add";
	}
}
