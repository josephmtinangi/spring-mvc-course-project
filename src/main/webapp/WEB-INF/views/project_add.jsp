<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<jsp:include page="../views/fragments/header.jsp"></jsp:include>

<div class="container">
	<div class="row">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">#</h3>
			</div>
			<div class="panel-body">

				<form action="<spring:url value="/projects/add"/>" method="POST">
					<div class="form-group">
						<label for="name">Name</label><input type="text" name="name"
							class="form-control" />
					</div>
					<div class="form-group">
						<label for="project_type">Project Type</label> <select
							name="project_type" id="project_type" class="form-control">
							<option value="single">Single</option>
							<option value="double">Double</option>
						</select>
					</div>
					<div class="form-group">
						<label for="sponsor">Sponsor</label><input type="text"
							class="form-control" />
					</div>
					<div class="form-group">
						<label for="authorized_funds">Authorized Funds</label><input
							type="text" class="form-control" />
					</div>
					<div class="form-group">
						<label for="authorized_hours">Authorized Hours</label><input
							type="text" class="form-control" />
					</div>
					<div class="form-group">
						<label for="description">Description</label>
						<textarea rows="5" class="form-control"></textarea>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="special"
							value="special"> Special
						</label>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>
				</form>

			</div>
		</div>
	</div>
</div>

<jsp:include page="../views/fragments/footer.jsp"></jsp:include>

