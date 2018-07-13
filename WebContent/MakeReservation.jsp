<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Make Reservation</title>
</head>
<body>
	<form action="makereservation" method="post">
		<h1>Make a Reservation</h1>
		<p>
			<label for="plannername">PlannerName</label>
			<input id="plannername" name="plannername" value="${fn:escapeXml(param.plannername)}">
		</p>
		<p>
			<label for="diyername">UserName</label>
			<input id="diyername" name="diyername" value="">
		</p>
		<p>
			<label for="year">Year</label>
			<input id="year" name="year" value="">
		</p>
		<p>
			<label for="month">Month</label>
			<input id="month" name="month" value="">
		</p>
		<p>
			<label for="day">Day</label>
			<input id="day" name="day" value="">
		</p>
		<p>
			<input type="submit">
		</p>
	</form>
	<br/><br/>
	<p>
		<span id="successMessage"><b>${messages.success}</b></span>
	</p>
</body>
</html>