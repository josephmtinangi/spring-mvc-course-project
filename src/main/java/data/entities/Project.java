package data.entities;

import java.math.BigDecimal;

public class Project {

	private Long projectId;
	private String name;
	private String description;
	private Sponsor sponsor;
	private BigDecimal authorizedHours;
	private BigDecimal authorizedFunds;
	private String year;
	private Boolean special;
	private String project_type;

	public Long getProjectId() {
		return projectId;
	}

	public void setProjectId(Long projectId) {
		this.projectId = projectId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		System.out.println("Spring MVC data binding in action");
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public BigDecimal getAuthorizedHours() {
		return authorizedHours;
	}

	public void setAuthorizedHours(BigDecimal authorizedHours) {
		this.authorizedHours = authorizedHours;
	}

	public BigDecimal getAuthorizedFunds() {
		return authorizedFunds;
	}

	public void setAuthorizedFunds(BigDecimal authorizedFunds) {
		this.authorizedFunds = authorizedFunds;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public Boolean getSpecial() {
		return special;
	}

	public void setSpecial(Boolean special) {
		this.special = special;
	}

	public String getProject_type() {
		return project_type;
	}

	public void setProject_type(String project_type) {
		this.project_type = project_type;
	}
	
	
	
	public Sponsor getSponsor() {
		return sponsor;
	}

	public void setSponsor(Sponsor sponsor) {
		this.sponsor = sponsor;
	}

	@Override
	public String toString() {
		return "Project [projectId=" + projectId + ", name=" + name + ", description=" + description + ", sponsor="
				+ sponsor + ", authorizedHours=" + authorizedHours + ", authorizedFunds=" + authorizedFunds + ", year="
				+ year + ", special=" + special + ", project_type=" + project_type + "]";
	}
	
	

}
