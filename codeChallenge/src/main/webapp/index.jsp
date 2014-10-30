<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="/resources/css/jquery.dataTables.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.dataTables.min.js" />"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>School Results</title>
<script>
$(document).ready(function() {
	var datatable = $('#table').dataTable({
		"asSorting": [[ 1, "desc" ]],
		"bProcessing": false,
		"sPaginationType": "full_numbers",
		"iDisplayLength": 50,
		"aaSorting": [[ 1, "desc" ]],
		"bJQueryUI": true,
		"sAjaxSource": "/codeChallenge/list",
		"sAjaxDataProp": "schools",
		"aoColumns": [
			{ "mData": "school.schoolName" },
			{ "mData": "latestY3" },
			{ "mData": "latestY5" },
			{ "mData": "latestY7" },
			{ "mData": "latestY9" },
			{ "mData": "rawGainY3Y5" },
			{ "mData": "factoredGainY3Y5" },
			{ "mData": "glgY3Y5" },
			{ "mData": "latestGainInGainY3Y5" }
		],
	} );
});
</script>
</head>
<body>
<div class="container">
<div class="row">
	<div class="col-*-*">
		<table id="table" class="display" cellspacing="0">
		    <thead>
		        <tr>
		            <th>School</th>
		            <th>Y3</th>
		            <th>Y5</th>
		            <th>Y7</th>
		            <th>Y9</th>
		            <th>Raw Gain Y3 to Y5</th>
		            <th>Factored Gain Y3 to Y5</th>
		            <th>CLG% Y3 to Y5</th>
		            <th>Gain in Gain Y3 to Y5</th>
		        </tr>
		    </thead>
		
		    <tfoot>
		        <tr>
		            <th>School</th>
		            <th>Y3</th>
		            <th>Y5</th>
		            <th>Y7</th>
		            <th>Y9</th>
		            <th>Raw Gain Y3 to Y5</th>
		            <th>Factored Gain Y3 to Y5</th>
		            <th>CLG% Y3 to Y5</th>
		            <th>Gain in Gain Y3 to Y5</th>
		        </tr>
		    </tfoot>
		</table>
	</div>
</div>
<div class="row">
	<div class="col-*-*">
		 <form role="form">
  			<div class="form-group">
			    <label for="subject">Subject</label>
			    <input type="email" class="form-control" id="subject">
			 </div>
		</form>
	</div>
</div>
</div>
</body>
</html>