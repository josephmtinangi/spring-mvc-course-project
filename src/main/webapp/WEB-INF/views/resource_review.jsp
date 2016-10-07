<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../views/fragments/header.jsp"></jsp:include>

<div class="container">
	<div class="row">
		<h2>Please review the resource for accuracy</h2>
		<div class="form-group">
			<label for="">Name </label><span>${ resource.name }</span>
		</div>
		<div class="form-group">
			<label for="">Type </label><span>${ resource.resource_type }</span>
		</div>
		<div class="form-group">
			<label for="">Cost </label><span>${ resource.cost }</span>
		</div>
		<div class="form-group">
			<label for="">Unit of Measure </label><span>${ resource.unitOfMeasure }</span>
		</div>
		<div class="form-group">
			<label for="">Indicators </label>
			<c:forEach var="indicator" items="${ resource.indicators }">
				<span>${ indicator }</span>
			</c:forEach>
		</div>

		<a href="<spring:url value="/resource/add"/>" class="btn btn-default">Edit</a>
		<a href="<spring:url value="/resource/save"/>" class="btn btn-default">Save</a>
	</div>
</div>

<jsp:include page="../views/fragments/footer.jsp"></jsp:include>
