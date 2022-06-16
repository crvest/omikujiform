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
<body class="container w-50">
	<div class="card" style="background-color: dodgerblue">
		<div class="card-header">
			<h1>Here's Your Omikuji</h1>
		</div>
		<div class="card-body">
			<p>In <span><c:out value="${cyears}"/></span> years, 
			you will live in <span><c:out value="${ccity}"/></span>
			with <span><c:out value="${cperson}"/></span> as your roommate 
			<span><c:out value="${chobby}"/></span> for a living.
			The next time you see a <span><c:out value="${canimal}" /></span>, 
			you will have good luck. Also, <span><c:out value="${cnote}"/></span>.
			</p>
		</div>
	</div>
	<p class="text-center">
		<a href="http://localhost:8080/omikuji">Go Back</a>
	</p>
</body>
</html>