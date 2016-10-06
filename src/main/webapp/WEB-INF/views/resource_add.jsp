<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<jsp:include page="../views/fragments/header.jsp"></jsp:include>

<div class="container">
	<div class="row">
		<h2>Add a resource</h2>
		
		<spring:url value="/resource/save" var="formUrl"/>
		
		<form:form action="${ formUrl }" method="POST" modelAttribute="resource" class="form-horizontal">
		
			<div class="form-group">
				<label for="resource-name" class="col-sm-3 control-label">Name</label>
				<div class="col-sm-6">
					<form:input path="name" cssClass="form-control" id="resource-name"/>
				</div>
			</div>
			<div class="form-group">
				<label for="" class="col-sm-3 control-label">Type</label>
				<div class="col-sm-6">
					<form:select path="resource_type" items="${ resource_type_options }" cssClass="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="" class="col-sm-3 control-label">Cost</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="" class="col-sm-3 control-label">Unit of measure</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="" class="col-sm-3 control-label"></label>
				<div class="col-sm-6">
					<button type="submit" class="btn btn-primary">Save</button>
				</div>
			</div>
		</form:form>
	</div>
</div>

<jsp:include page="../views/fragments/footer.jsp"></jsp:include>