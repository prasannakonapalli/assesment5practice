<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Career Selection</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link href="/style.css" rel="stylesheet" />
</head>
<body>

	<div class="container">
		<h2 class="display-4">Career Selection</h2>

		<!-- <a href="<c:url value="/test.html" var="testvar" />">TEST</a> // testvar is where you put the url formatted by c:url
<c:out value="${testvar}"/> // you print what is the formatted url -->

		<c:url value="/career?careerDisplay=Software Developer"
			var="sDeveloper" />

		<a href="${sDeveloper}">Software Developer</a><br>

		<c:set var="sm" value="Scrum Master" />
		<a href="/career?careerDisplay=${sm}">${sm}</a><br> 
		<c:url value="/career?careerDisplay=QA Analyst" var="qAnalyst" />

		<a href="${qAnalyst}">QA Analyst</a><br> 
		<c:url value="/career?careerDisplay=Business Analyst" var="bAnalyst" />

		<a href="${bAnalyst}">Business Analyst</a>









	</div>

</body>
</html>