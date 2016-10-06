package data.entities;

import java.math.BigDecimal;
import java.util.Arrays;

public class Resource {
	
	private Long resourceId;
	
	private String name;
	
	private String resource_type;
	
	private BigDecimal cost;
	
	private String unitOfMeasure;
	
	private String[] indicators;

	public Long getResourceId() {
		return resourceId;
	}

	public String[] getIndicators() {
		return indicators;
	}

	public void setIndicators(String[] indicators) {
		this.indicators = indicators;
	}

	public void setResourceId(Long resourceId) {
		this.resourceId = resourceId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getResource_type() {
		return resource_type;
	}

	public void setResource_type(String resource_type) {
		this.resource_type = resource_type;
	}

	public BigDecimal getCost() {
		return cost;
	}

	public void setCost(BigDecimal cost) {
		this.cost = cost;
	}

	public String getUnitOfMeasure() {
		return unitOfMeasure;
	}

	public void setUnitOfMeasure(String unitOfMeasure) {
		this.unitOfMeasure = unitOfMeasure;
	}

	@Override
	public String toString() {
		return "Resource [resourceId=" + resourceId + ", name=" + name + ", resource_type=" + resource_type + ", cost="
				+ cost + ", unitOfMeasure=" + unitOfMeasure + ", indicators=" + Arrays.toString(indicators) + "]";
	}
	
	

}
