<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Year Selection</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link href="/style.css" rel="stylesheet" />
</head>
<body>


	<div class="container">
		<h2 class="display-4">Year-Selection</h2>
		<form action="/submit-details" method="post">
			<div>
				<strong>Name: </strong> <input type="text" name="name" />
			</div>
			<br>
			<div>
				<strong>Year: </strong> <input type="text" name="year" maxlength="4"
					pattern="\d{4}" required />
			</div>
			<br>
			<button type="submit">submit</button>



		</form>



	</div>



</body>
</html>