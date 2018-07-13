<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update a Reservation</title>
</head>
<body>
	<h1>Update Reservation</h1>
	<form action="updatereservation" method="post">
		<p>
			<label for="reservationid">Reservation#</label>
			<input id="reservationid" name="reservationid" value="${fn:escapeXml(param.reservationid)}">
		</p>
		<p>
			<label for="year">Update Year</label>
			<input id="year" name="year" value="">
		</p>
		<p>
			<label for="month">Update Month</label>
			<input id="month" name="month" value="">
		</p>
		<p>
			<label for="day">Update Day</label>
			<input id="day" name="day" value="">
		</p>
		<p>
			<input type="submit">
		</p>
	</form>
	<br/><br>
	<p>
		<span id="successMessage"><b>${messages.success}</b></span>
	</p>
</body>
</html>