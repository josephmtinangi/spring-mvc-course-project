	<jsp:include page="../views/fragments/header.jsp"></jsp:include>
	<div class="container">
		<h2>Current Projects</h2>
		<div class="list-group">
			<a href="#" class="list-group-item">
				<h4 class="list-group-item-heading">Name</h4>
				<p class="list-group-item-text">${ currentProject.name }</p>
			</a>
			<a href="#" class="list-group-item">
				<h4 class="list-group-item-heading">Sponsor</h4>
				<p class="list-group-item-text">${ currentProject.sponsor }</p>
			</a>
			<a href="#" class="list-group-item">
				<h4 class="list-group-item-heading">Description</h4>
				<p class="list-group-item-text">${ currentProject.description }</p>
			</a>						
		</div>
	</div>
	<jsp:include page="../views/fragments/footer.jsp"></jsp:include>
	
