<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../views/fragments/header.jsp"></jsp:include>
<div class="container">

	<div class="row">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">All Projects</h3>
			</div>

			<div class="panel-body">

				<table class="table table-hover">
					<tr>
					<thead>
						<th>Name</th>
						<th>Sponsor</th>
						<th>Description</th>
					</thead>
					</tr>
					<tbody>
						<c:forEach items="${ projects }" var="project">
							<tr>
								<td><a href="<spring:url value="/projects/${project.projectId}"/>">${project.name}</a></td>
								<td>${ project.sponsor }</td>
								<td>${ project.description }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
	</div>

</div>
<jsp:include page="../views/fragments/footer.jsp"></jsp:include>

