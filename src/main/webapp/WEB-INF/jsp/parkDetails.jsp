<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>




<!DOCTYPE html>
<html>
<head>
<c:import url="/WEB-INF/jsp/header.jsp" />
<meta charset="UTF-8">
<title>Details</title>
</head>
<body>

[IMAGINE A BEAUTIFUL PARK PIC HERE]
<br>
HERE WOULD BE DETAILS FOR THE PARK IF I GOT TO THE IMPORT PART, BUT I HAVEN"T YET

<section id="weather">

<h2 id="weather section">Here is the local weather for the park:</h2>

	<table>

	<c:forEach items="${weather}" var="parkcode">
	<img src="img/weather/${weather.forcast}.png" alt="forecast image" 
	style="max-size: 30%; max-height: 30%">

		<c:out value="${weather.fivedayforecastvalue}"/>
		<!-- Temp Switch here -->
		<c:out value="${weather.low}"/>
		<c:out value="${weather.high}"/>
		<c:out value="${weather.forecast}"/>
		
		
		<!-- when forecast = etc -->
	<c:choose>
		
		<c:when test = ${weather.forcast = "snow"} >
		Bring your snowshoes, Frosty!
		</c:when>
		
		<c:when test = ${weather.forcast = "rain"} >
		Better back the famous red raincoat and some galoshes!
		</c:when>
		
		<c:when test = ${weather.forcast = "thunderstorm"} >
		ALERT ALERT ALERT! SEEK SHELTER AND AVOID RIDGELINES!
		</c:when>
		
		<c:when test = ${weather.forcast = "sunny"} >
		Skin cancer is not a joke. Apply that sunscreen early and often
		</c:when>
		
		<c:otherwise>
		Enjoy the greatoutdoors, you lovely human.
		</c:otherwise>
	</c:choose>

		</c:forEach>

	</table>

</section>

<img src="img/weather/rain.png" alt="test image" style="max-size: 30%; max-height: 30%">
				
					

		
						    
      
</body>
</html>

<c:import url="/WEB-INF/jsp/footer.jsp" />