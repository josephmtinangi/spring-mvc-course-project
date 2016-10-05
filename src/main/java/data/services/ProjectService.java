package data.services;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

import data.entities.Project;

public class ProjectService {

	private List<Project> projects = new LinkedList<Project>();

	public ProjectService() {
		Project javaProject = this.createProject("Java Project", "This is a Java Project");
		Project javascriptProject = this.createProject("Javascript Project", "This is a Javascript Project");
		Project htmlProject = this.createProject("HTML Project", "This is an HTML project");
		
		this.projects.addAll(Arrays.asList(new Project[]{javaProject, javascriptProject, htmlProject}));
	}

	public Project find(Long projectId){
		return this.projects.stream().filter(p -> {
			return p.getProjectId().equals(projectId);
		}).collect(Collectors.toList()).get(0);
	}

	private Project createProject(String title, String description) {
		Project project = new Project();
		project.setName(title);
		project.setAuthorizedFunds(new BigDecimal("100000"));
		project.setAuthorizedHours(new BigDecimal("1000"));
		project.setProjectId(1L);
		project.setSpecial(false);
		project.setProject_type("multi");
		project.setYear("2016");
		project.setDescription(description);
		return project;
	}

}
