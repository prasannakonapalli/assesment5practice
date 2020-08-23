<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Career Display</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link href="/style.css" rel="stylesheet" />
</head>
<body>

	<div class="container">
		<h2 class="display-4">Career Display</h2>


		<!-- <c:set var = "url"    value = "/Software Developer"/>  -->



		<c:choose>
			<c:when test="${careerDisplay.equals('SoftwareDeveloper')}">
				<p>You have chosen Software Developer
				<p>
			</c:when>
			<c:when test="${careerDisplay.equals('ScrumMaster')}">
				<p>You have chosen Scrum Master
				<p>
			</c:when>
			<c:when test="${careerDisplay.equals('QAAnalyst')}">
				<p>You have chosen QA Analyst
				<p>
			</c:when>
			<c:otherwise>
				<p>You have chosen Business Analyst
				<p>
			</c:otherwise>
		</c:choose>


	</div>

</body>
</html>