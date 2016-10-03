<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>

<link rel="stylesheet"
	href="<spring:url value="/resources/css/bootstrap.css"/>" type="text/css" />
<link rel="stylesheet"
	href="<spring:url value="/resources/css/home.css"/>" type="text/css" />

</head>
<body>
	
	<jsp:include page="../views/fragments/header.jsp"></jsp:include>
	
	<script src="<spring:url value="/resources/js/jquery.js"/>"></script>
	<script src="<spring:url value="/resources/js/bootstrap.js"/>"></script>
</body>
</html>
