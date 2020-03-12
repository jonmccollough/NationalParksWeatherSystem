<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<c:import url="/WEB-INF/jsp/header.jsp" />
<meta charset="UTF-8">
<title>Survey Results</title>
</head>
<body>


<section>
	<h1 id="surveyResultLeaders">The Top Parks</h1>
	<table>
	
	<c:forEach items="${park}" var="parkcode">
		
		<c:out value="${park.parkname}" />
		
	</c:forEach>
	
	</table>

</section>


!!The survey results page is displaying - its just empty right now!!

</body>
</html>