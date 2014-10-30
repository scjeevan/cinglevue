<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="/resources/css/jquery.dataTables.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/jquery.dataTables_themeroller.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap-theme.min.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/jquery.js" />"></script>
<script src="<c:url value="/resources/js/jquery.dataTables.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>School Results</title>
<script>
$(document).ready(function() {

	var dataTable = $('#table').dataTable({
		"asSorting": [[ 1, "desc" ]],
		"bProcessing": false,
		"sPaginationType": "full_numbers",
		"iDisplayLength": 50,
		"aaSorting": [[ 1, "desc" ]],
		"bJQueryUI": true,
		"sAjaxSource": "/codeChallenge/list?subject=all",
		"sAjaxDataProp": "schools",
		"bDestroy": true,
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

	$('#subject').on('change', function() {
		dataTable.fnClearTable();
		dataTable = $('#table').dataTable({
			"asSorting": [[ 1, "desc" ]],
			"bProcessing": false,
			"sPaginationType": "full_numbers",
			"iDisplayLength": 50,
			"aaSorting": [[ 1, "desc" ]],
			"bJQueryUI": true,
			"sAjaxSource": "/codeChallenge/list?subject="+$('#subject').val(),
			"sAjaxDataProp": "schools",
			"bDestroy": true,
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
		});
	});
	
});
</script>
</head>
<body>
<div class="container">
<div class="row">
	<div class="col-*-*">
		 <form action="" role="form">
  			<div class="form-group">
			    <label for="subject">Subject</label>
			    <select id="subject">
			    	<option value="all">All Subjects</option>
			    	<option value="numeracy">Numeracy</option>
			    	<option value="rading">Reading</option>
			    	<option value="spelling">Spelling</option>
			    </select>
			 </div>
		</form>
	</div>
</div>
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

</div>
</body>
</html>