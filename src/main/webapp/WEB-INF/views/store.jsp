<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Sloth Games Store</title>
	<link rel="icon" href="resources/static/imgs/favicon/favicon16.png" type="image/x-icon">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
	<style>
		body {
	    background-color: #333333;
	  }
	</style>
</head>

<body>
	<jsp:include page="/header" />
	
	<jsp:include page="/weeklySale" />
	
	<jsp:include page="/categoryClassification" />
	 
	<jsp:include page="/footer" />
</body>
</html>