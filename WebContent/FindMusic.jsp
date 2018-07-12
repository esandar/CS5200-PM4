<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Find a music</title>
</head>
<body>
	<form action="findmusic" method="post">
	<h1>Search for a music by name</h1>
		<p>
			<label for="musicName">Music Name</label>
			<input id="musicName" name="musicName" value="${fn:escapeXml(param.musicName)}">
		</p>
		<p>
			<input type="submit">
			<br/><br/><br/>
			<span id="successMessage"><b>${messages.success}</b></span>
		</p>
	</form>
	<h1>Matching Music</h1>
        <table border="1">
            <tr>
                <th>MusicId</th>
                <th>MusicName</th>
                <th>Artist</th>
                <th>Genres</th>
            </tr>
            <c:forEach items="${music}" var="music" >
                <tr>
                    <td><c:out value="${music.getMusicID()}" /></td>
                    <td><c:out value="${music.getName()}" /></td>
                    <td><c:out value="${music.getArtist()}" /></td>
                    <td><c:out value="${music.getGenres()}" /></td>
                </tr>
            </c:forEach>
       </table>
</body>
</html>