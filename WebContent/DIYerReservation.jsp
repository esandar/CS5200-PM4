<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Find Reservation</title>
</head>
<body>
	<form action="diyerreservation" method="post">
		<h1>Search for Reservations by DIYer</h1>
		<p>
			<label for="diyername">DIYerName</label>
			<input id="diyername" name="diyername" value="${fn:escapeXml(param.diyername)}">
		</p>
		<p>
			<input type="submit">
			<br/><br/><br/>
			<span id="successMessage"><b>${messages.success}</b></span>
		</p>
	</form>
	<br/>
	<br/>
	<h1>Matching Reservations</h1>
		<table border="1">
			<tr>
				<th>PlannerName</th>
				<th>EventDate</th>
				<th>Update Reservation</th>
				<th>Delete Reservation</th>
			</tr>
			<c:forEach items="${reservations}" var="reservation">
				<tr>
					<td><c:out value="${reservation.getPlannername()}" /></td>
					<td><c:out value="${reservation.getEventdate()}" /></td>
					<td><a href="updatereservation?reservationid=<c:out value="${reservation.getReservationID()}" />">Update</a></td>
					<td><a href="deletereservation?reservationid=<c:out value="${reservation.getReservationID()}" />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
</body>
</html>