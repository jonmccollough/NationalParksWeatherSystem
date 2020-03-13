<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>




<!DOCTYPE html>
<html>
<head>
<c:import url="/WEB-INF/jsp/header.jsp" />
<meta charset="UTF-8">
<title>Details</title>
</head>
<body>

	<!-- <section id="park details" > -->
		<h2>${codeId.parkname} </h2> 
		
		<b>"${codeId.inspirationalQuote} "<br>
		
		&emsp; &emsp; &emsp;- ${codeId.inspirationalQuoteSource}</b> <br> <br>
		
		<img src="img/parks/<c:out value = "${fn:toLowerCase(codeId.parkCode)}"/>.jpg" style="max-width: 1000px;"/>
		
		<section style="display:flex-box"> 
		 
		 <br>
		 
		State: ${codeId.state} <br>
		
		Acreage: ${codeId.acreage} <br>

		Elevation In Feet: ${codeId.elevationInFeet} <br>
	
		Miles of Trail: ${codeId.milesOfTrail} <br>
		
		Number of Campsites: ${codeId.numberOfCampsites}<br>
		
		Climate: ${codeId.climate}<br>
	
		Year Founded: ${codeId.yearFounded}<br>
		
		Annual Visitor Count: ${codeId.annualVisitorCount}<br>
		
		Entry Fee: $ ${codeId.entryFee} <br>
		
		Number of Animal Species: ${codeId.numberOfAnimalSpecies}<br><br>
		
		Park Description: <br>
		${codeId.parkDescription } <br> <br>
		
		</section>
		

	<!-- </section> -->




	<section id="weather">

		<h2 id="weather section">Here is the local weather for the park:</h2>

		<table>
			
			<c:forEach items="${weatherList}" var="dailyWeather">

				<td><img
					src="img/weather/<c:out value ="${dailyWeather.forecast}"/>.png"
					alt="forecast image" style="max-width: 100px; max-height: 100px;" />
				</td>

				<td style="width: 100px">Day: <c:out
						value="${dailyWeather.fiveDayForecastValue}" /> <br>High: <c:out
						value="${dailyWeather.high}" /> <br>Low: <c:out
						value="${dailyWeather.low}" /> Forecast: <c:out
						value="${dailyWeather.forecast}" />
				</td>
				
				
				
			</c:forEach>
		
			

		</table>

	</section>
	<section>
		WEATHER ALERTS: 
		
		<c:forEach items="${weatherList}" var="dailyWeather2">
			<c:choose>
				<c:when test="${dailyWeather2.forecast == 'snow'}">
				<c:out value="Bring your snowshoes, Frosty!"/>
				</c:when>

				<c:when test="${dailyWeather2.forecast == 'rain'}">
				<c:out value="Better bring the famous red raincoat and some galoshes!"/>
				</c:when>

				<c:when test="${dailyWeather2.forecast == 'thunderstorms'}">
				<c:out value="ALERT ALERT ALERT! SEEK SHELTER AND AVOID RIDGELINES!"/>
				</c:when>

				<c:when test="${dailyWeather2.forecast == 'sunny'}">
				<c:out value="Skin cancer is not a joke. Apply that sunscreen early and often." />
				</c:when>

				<c:otherwise>
				<c:out value="Enjoy the greatoutdoors, you lovely human."/>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</section>
</body>
</html>

<c:import url="/WEB-INF/jsp/footer.jsp" />