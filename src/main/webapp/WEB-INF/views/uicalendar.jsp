<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="<%=request.getContextPath()%>/static/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/fullcalendar/fullcalendar.css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/uicalendar/calendarDemo.css" />
<!-- jquery, moment, and angular have to get included before fullcalendar -->

<script type="text/javascript" src="<%=request.getContextPath()%>/static/bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/angular.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/angular-route.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/bootstrap/js/ui-bootstrap-tpls-0.13.0.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/lib/moment.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/fullcalendar/fullcalendar.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/uicalendar/gcal.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/uicalendar/calendar.js"></script>


<script type="text/javascript" src="<%=request.getContextPath()%>/static/uicalendar/calendarDemo.js"></script>


</head>
<body ng-app="calendarDemoApp">

<%@ include file="uicalendarview.jsp"%>

</body>
</html>