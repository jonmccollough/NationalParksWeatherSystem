<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>




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

<section id = "park details">
<img src="img/parks/<c:out value = "${fn:toLowerCase(codeId.parkCode)}"/>.jpg" />

${codeId.parkname};


</section>




<section id="weather">

<h2 id="weather section">Here is the local weather for the park:</h2>

	<table>

	<c:forEach items="${weatherList}" var= "dailyWeather">
	<img src="img/weather/${dailyweather.forecast}.png" alt="forecast image" 
	style="max-size: 30%; max-height: 30%">

		<c:out value="${dailyWeather.fiveDayForecastValue}"/>
		<!-- Temp Switch here -->
		<c:out value="${dailyWeather.low}"/>
		<c:out value="${dailyWeather.high}"/>
		<c:out value="${dailyWeather.forecast}"/>
		
		
		
		<!-- when forecast = etc -->
	<%-- <c:choose>
		
		<c:when test = ${dailyWeather.forecast == "snow"} >
		Bring your snowshoes, Frosty!
		</c:when>
		
		<c:when test = ${dailyWeather.forecast == "rain"} >
		Better bring the famous red raincoat and some galoshes!
		</c:when>
		
		<c:when test = ${dailyWeather.forecast == "thunderstorm"} >
		ALERT ALERT ALERT! SEEK SHELTER AND AVOID RIDGELINES!
		</c:when>
		
		<c:when test = ${dailyWeather.forecast == "sunny"} >
		Skin cancer is not a joke. Apply that sunscreen early and often.
		</c:when>
		
		<c:otherwise>
		Enjoy the greatoutdoors, you lovely human.
		</c:otherwise>
	</c:choose> --%>

		</c:forEach>

	</table>

</section> 

<img src="img/weather/rain.png" alt="test image" style="max-size: 30%; max-height: 30%">
				
					

		
						    
      
</body>
</html>

<c:import url="/WEB-INF/jsp/footer.jsp" />