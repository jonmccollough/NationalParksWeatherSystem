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

	<section id="weather">
		<h2 id="weather section">Here is the local weather for the park:</h2>
		<table>
			<c:forEach items="${weatherList}" var="dailyWeather" begin="0" end="4">

				<td><img src="img/weather/<c:out value ="${dailyWeather.forecast}"/>.png"
					alt="forecast image" style="max-width: 100px; max-height: 100px;" />
				</td>
				<td style="width: 100px"> 
					<c:out value="Day: ${dailyWeather.fiveDayForecastValue}" /> <br>
					
					<c:if test="${tempConvert == 'F'}">
					<c:out value="High: ${dailyWeather.high} F" />&#176; <br>
					<c:out value="Low: ${dailyWeather.low} F" />&#176;
					</c:if>
					
					<c:if test="${tempConvert == 'C'}">
					<c:out value="High: ${dailyWeather.highC} C" />&#176; <br>
					<c:out value="Low: ${dailyWeather.lowC} C" />&#176;
					</c:if>
					
					<c:out value="Forecast: ${dailyWeather.forecast}" />
				</td>
			</c:forEach>
		
			
		
		</table>
		 
		<%-- <c:url var="weatherChange" value="/parkDetail">
			<c:param name="fiveDayForecastValue" value="${weatherList.fiveDayForecastValue}"/>
		</c:url> --%>
		<form action="parkDetails?id=${codeId.parkCode}" method="POST">
			<c:if test="${tempConvert == 'F'}">
				<input type="hidden" name="tempConvert" value=false>
				<input type="submit" value="Change to C">
			</c:if>
			<c:if test="${tempConvert == 'C'}">
				<input type="hidden" name="tempConvert" value=true>
				<input type="submit" value="Change to F">
			</c:if>
		</form>

       		
	</section>
	<section>
		<h3 style="color: red">WEATHER ALERTS: </h3>
		<c:forEach items="${weatherList}" var="dailyWeather2" begin="0" end="0">
			<c:choose>
				<c:when test="${dailyWeather2.forecast == 'snow'}">
				<c:out value="Bring your snowshoes, Frosty!"/>
				</c:when>

				<c:when test="${dailyWeather2.forecast == 'rain'}">
				<c:out value="Better bring the famous red raincoat and some galoshes!"/>
				</c:when>

				<c:when test="${dailyWeather2.forecast == 'thunderstorms'}">
				<c:out value="ALERT ALERT ALERT! THUNDERSTORMS! SEEK SHELTER AND AVOID RIDGELINES!"/>
				</c:when>

				<c:when test="${dailyWeather2.forecast == 'sunny'}">
				<c:out value="Skin cancer is not a joke. Apply that sunscreen early and often." />
				</c:when>

				<c:otherwise>
				<c:out value="No alerts today! Enjoy the greatoutdoors, you lovely human."/>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</section>
</body>
</html>

<c:import url="/WEB-INF/jsp/footer.jsp" />