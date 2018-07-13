<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Find an DIY Event</title>
</head>
<body>
	<form action="findevents" method="post">
		<h1>Search For A Event by UserName</h1>
		<p>
			<label for="userName">UserName</label>
			<input id="userName" name="userName" value="${fn:escapeXml(param.userName)}">
		</p>
		<p>
			<input type="submit">
			<br/><br/><br/>
			<span id="successMessage"><b>${messages.success}</b></span>
		</p>
	</form>
	<br/>
	<br/>
	<h1>Matching Events</h1>
		<table border="1">
			<tr>
				<th>Event ID</th>
                <th>Theme</th>
                <th>Description</th>
                <th>List ID</th>
                <th>Created by User</th>
                <th>Update</th>
                <th>Delete</th>
			</tr>
			<c:forEach items="${events}" var="diyEvent">
				<tr>
					 <td><c:out value="${diyEvent.getEventID()}" /></td>
					 <td><c:out value="${diyEvent.getTheme()}" /></td>
					 <td><c:out value="${diyEvent.getDescription()}" /></td>
					 <td><c:out value="${diyEvent.getListID()}" /></td>
					 <td><c:out value="${diyEvent.getUsername()}" /></td>
					 <td><a href="updateevents?eventId=<c:out value="${diyEvent.getEventID()}"/>">Update</a></td>
					 <td><a href="deleteevents?eventId=<c:out value="${diyEvent.getEventID()}"/>">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
</body>
</html>