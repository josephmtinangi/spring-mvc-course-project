<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<jsp:include page="../views/fragments/header.jsp"></jsp:include>

<div class="container">
	<div class="row">
		<h2>Add a resource</h2>

		<spring:url value="/resource/review" var="formUrl" />

		<form:form action="${ formUrl }" method="POST"
			modelAttribute="resource" class="form-horizontal">

			<div class="form-group">
				<label for="resource-name" class="col-sm-3 control-label">Name</label>
				<div class="col-sm-6">
					<form:input path="name" cssClass="form-control" id="resource-name" />
				</div>
			</div>
			<div class="form-group">
				<label for="" class="col-sm-3 control-label">Type</label>
				<div class="col-sm-6">
					<form:select path="resource_type"
						items="${ typeOptions }" cssClass="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="" class="col-sm-3 control-label">Cost</label>
				<div class="col-sm-6">
					<input type="text" name="cost" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="" class="col-sm-3 control-label">Unit of measure</label>
				<div class="col-sm-6">
					<form:radiobuttons path="unitOfMeasure" items="${ radioOptions }" />
				</div>
			</div>
			<div class="form-group">
				<label for="resource-indicators" class="col-sm-3 control-label">Indicators</label>
				<div class="col-sm-6">
					<form:checkboxes items="${ checkOptions }" path="indicators" />
					<a id="request-link" href="<spring:url value="/resource/request"/>">Send Request</a>
				</div>
			</div>
			<div class="form-group">
				<label for="notes" class="col-sm-3 control-label">Notes</label>
				<div class="col-sm-6">
					<form:textarea id="notes" path="notes" cssClass="form-control" rows="3" />
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-6 col-sm-offset-3">
					<button type="submit" class="btn btn-primary">Save</button>
				</div>
			</div>
		</form:form>
	</div>
</div>

<jsp:include page="../views/fragments/footer.jsp"></jsp:include>