<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Omikuji Form</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<script type="text/javascript" src="js/main.js"></script>
</head>
<body class="container">
	<h1>Send an Omikuji</h1>
	<form action="/process" method="post">
		<div class="form-floating mb-3 w-25">
			<input class="form-control" type="number" name="years">
			<label class="form-label">Pick any number from 5 to 25</label>
		</div>
		<div class="form-floating mb-3 w-25">
			<input class="form-control" type="text" name="city">
			<label class="form-label">Enter the name of any city:</label>
		</div>
		<div class="form-floating mb-3 w-25">
			<input class="form-control" type="text" name="person">
			<label class="form-label">Enter the name of any real person</label>
		</div>
		<div class="form-floating mb-3 w-25">
			<input class="form-control" type="text" name="hobby">
			<label class="form-label">Enter professional endeavor or hobby:</label>
		</div>
		<div class="form-floating mb-3 w-25">
			<input class="form-control" type="text" name="animal">
			<label class="form-label">Enter any type of living thing</label>
		</div>
		<div class="form-floating mb-3 w-auto">
			<textarea class="form-control" name="note"></textarea>
			<label class="form-label">Say something nice to someone:</label>
		</div>
		<input class="btn-primary" type="submit">
	</form>
</body>
</html>