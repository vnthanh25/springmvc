
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

</head>
<body>
<h2>Index</h2>

<a href='<%=request.getContextPath()%>/home/fullcalendar'>fullcalendar</a>

<a href='<%=request.getContextPath()%>/home/uicalendar'>uicalendar</a>
</body>
</html>
