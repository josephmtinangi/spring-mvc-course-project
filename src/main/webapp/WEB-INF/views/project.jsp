<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../views/fragments/header.jsp"></jsp:include>
<div class="container">

	<div class="row">

		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">${ project.name }</div>
			<div class="panel-body">
				<p>${ project.description }</p>
			</div>

			<!-- Table -->
			<table class="table table-bordered">
				<tbody>
					<tr>
						<td>Sponsor</td>
						<td>${ project.sponsor }</td>
					</tr>
					<tr>
						<td>Type</td>
						<td>${ project.project_type }</td>
					</tr>
					<tr>
						<td>Authorized Funds</td>
						<td>${ project.authorizedFunds }</td>
					</tr>
					<tr>
						<td>Authorized hours</td>
						<td>${ project.authorizedHours }</td>
					</tr>
					<tr>
						<td>Special</td>
						<td>${ project.special }</td>
					</tr>
				</tbody>
			</table>
		</div>

	</div>

</div>
<jsp:include page="../views/fragments/footer.jsp"></jsp:include>

