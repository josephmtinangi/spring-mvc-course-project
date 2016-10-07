<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="../views/fragments/header.jsp"></jsp:include>

<div class="container">
	<div class="row">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">#</h3>
			</div>
			<div class="panel-body">

				<spring:url value="/projects/add" var="formUrl" />
				<form:form modelAttribute="project" action="${ formUrl }"
					method="post">
					<div class="form-group">
						<label for="name">Name</label>
						<form:input path="name" cssClass="form-control" />
					</div>
					<div class="form-group">
						<label for="project_type">Project Type</label>
						<form:select path="project_type" cssClass="form-control"
							items="${ types }"></form:select>
					</div>

					<div class="form-group">
						<label for="sponsor-name">Sponsor Name</label>
						<form:input cssClass="form-control" path="sponsor.name" />
					</div>

					<div class="form-group">
						<label for="sponsor-phone">Sponsor Phone</label>
						<form:input cssClass="form-control" path="sponsor.phone" />
					</div>

					<div class="form-group">
						<label for="sponsor-email">Sponsor Email</label>
						<form:input cssClass="form-control" path="sponsor.email" />
					</div>

					<div class="form-group">
						<label for="authorized_funds">Authorized Funds</label>
						<form:input path="authorizedFunds" cssClass="form-control" />
					</div>
					<div class="form-group">
						<label for="authorized_hours">Authorized Hours</label>
						<form:input path="authorizedHours" cssClass="form-control" />
					</div>
					<div class="form-group">
						<label for="description">Description</label>
						<form:textarea path="description" cssClass="form-control" rows="5" />
					</div>

					<div class="form-group">
						<label for="poc">POC</label>
						<form:input cssClass="form-control" path="pointsOfContacts[0]" />
					</div>

					<div class="form-group">
						<label for="poc2">POC2</label>
						<form:input cssClass="form-control" path="pointsOfContacts[1]" />
					</div>

					<div class="form-group">
						<label for="poc3">POC3</label>
						<form:input cssClass="form-control" path="pointsOfContacts[2]" />
					</div>

					<div class="checkbox">
						<label> <form:checkbox path="special" /> Special
						</label>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>
				</form:form>

			</div>
		</div>
	</div>
</div>

<jsp:include page="../views/fragments/footer.jsp"></jsp:include>

