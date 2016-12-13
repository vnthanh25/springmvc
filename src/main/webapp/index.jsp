
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta property="og:title" content="Sample" />
<meta property="og:description" content="Sample" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width">
<title>Sample</title>

<link rel='stylesheet' href='<%=request.getContextPath()%>/static/fullcalendar/fullcalendar.css' />
<%-- <link rel='stylesheet' href='<%=request.getContextPath()%>/static/fullcalendar/scheduler.css' /> --%>
<script src='<%=request.getContextPath()%>/static/lib/jquery.min.js'></script>
<script src='<%=request.getContextPath()%>/static/lib/moment.js'></script>
<script src='<%=request.getContextPath()%>/static/fullcalendar/fullcalendar.js'></script>
<%-- <script src='<%=request.getContextPath()%>/static/fullcalendar/scheduler.js'></script> --%>


</head>
<body>
<h2>Index</h2>


<div id='calendar'></div>
</body>
</html>

<script type="text/javascript">



$(document).ready(function() {
	
	var currentDate = new Date();
	var year = currentDate.getFullYear();
	var month = currentDate.getMonth() + 1;
	var defaultMonth = year.toString() + '-' + month.toString();
	
	$('#calendar').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay,listWeek'
		},
		defaultDate: defaultMonth + '-12',
		navLinks: true, // can click day/week names to navigate views
		editable: true,
		eventLimit: true, // allow "more" link when too many events
		events: [
			{
				title: 'All Day Event',
				start: defaultMonth + '-01'
			},
			{
				title: 'Long Event',
				start: defaultMonth + '-07',
				end: defaultMonth + '-10'
			},
			{
				id: 999,
				title: 'Repeating Event',
				start: defaultMonth + '-09T16:00:00'
			},
			{
				id: 999,
				title: 'Repeating Event',
				start: defaultMonth + '-16T16:00:00'
			},
			{
				title: 'Conference',
				start: defaultMonth + '-11',
				end: defaultMonth + '-13'
			},
			{
				title: 'Meeting',
				start: defaultMonth + '-12T10:30:00',
				end: defaultMonth + '-12T12:30:00'
			},
			{
				title: 'Lunch',
				start: defaultMonth + '-12T12:00:00'
			},
			{
				title: 'Meeting',
				start: defaultMonth + '-12T14:30:00'
			},
			{
				title: 'Happy Hour',
				start: defaultMonth + '-12T17:30:00'
			},
			{
				title: 'Dinner',
				start: defaultMonth + '-12T20:00:00'
			},
			{
				title: 'Birthday Party',
				start: defaultMonth + '-13T07:00:00'
			},
			{
				title: 'Click for Google',
				url: 'http://google.com/',
				start: defaultMonth + '-28'
			}
		]
	});
	
});


</script>
