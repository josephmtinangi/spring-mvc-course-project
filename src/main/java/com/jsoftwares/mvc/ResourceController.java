package com.jsoftwares.mvc;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

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
		System.out.println("Invoking add method");
		List<String> options = new LinkedList<>(
				Arrays.asList(new String[] { "Material", "Other", "Staff", "Technical Equipment" }));
		List<String> radios = new LinkedList<>(Arrays.asList(new String[] { "Hours", "Piece", "Tons" }));
		List<String> checks = new LinkedList<>(
				Arrays.asList(new String[] { "Lead Time", "Special Rate", "Requires Approval" }));
		model.addAttribute("resource_type_options", options);
		model.addAttribute("radioOptions", radios);
		model.addAttribute("checkOptions", checks);
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
