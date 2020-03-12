<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<c:import url="/WEB-INF/jsp/header.jsp" />
<meta charset="UTF-8">
<title>Survey</title>
</head>

	<form:form method="POST" action="survey" modelAttribute="survey" style="background: white;padding-left: 30px;padding-top:1px;">
		<h2>Favorite Parks Survey</h2>
		<div class="formInputGroup">
			<label for="FavoritePark">Your favorite national park:</label> 
			<form:select path="parkCode" name="FavoritePark" id="FavoritePark">
				<option value="CVNP">Cuyahoga Valley National Park</option>
				<option value="ENP">Everglades National Park</option>
				<option value="GCNP">Grand Canyon National Park</option>
				<option value="GNP">Glacier National Park</option>
				<option value="GSMNP">Great Smoky Mountains National Park</option>
				<option value="GTNP">Grand Teton National Park</option>
				<option value="MRNP">Mount Rainier National Park</option>
				<option value="RMNP">Rocky Mountain National Park</option>
				<option value="YNP">Yellowstone National Park</option>
				<option value="YNP2">Yosemite National Park</option>
			</form:select>
		</div>

		<div class="form">
			<form:label path="emailAddress">Email:</form:label> 
			<form:input path="emailAddress" name="email" id="email" />
			<form:errors path="emailAddress" cssClass="error"/>
		</div>
		<div>
			<label for="State">State:</label> 
			<form:select path="state">
				<option value="AL">Alabama</option>
				<option value="AK">Alaska</option>
				<option value="AZ">Arizona</option>
				<option value="AR">Arkansas</option>
				<option value="CA">California</option>
				<option value="CO">Colorado</option>
				<option value="CT">Connecticut</option>
				<option value="DE">Delaware</option>
				<option value="DC">District Of Columbia</option>
				<option value="FL">Florida</option>
				<option value="GA">Georgia</option>
				<option value="HI">Hawaii</option>
				<option value="ID">Idaho</option>
				<option value="IL">Illinois</option>
				<option value="IN">Indiana</option>
				<option value="IA">Iowa</option>
				<option value="KS">Kansas</option>
				<option value="KY">Kentucky</option>
				<option value="LA">Louisiana</option>
				<option value="ME">Maine</option>
				<option value="MD">Maryland</option>
				<option value="MA">Massachusetts</option>
				<option value="MI">Michigan</option>
				<option value="MN">Minnesota</option>
				<option value="MS">Mississippi</option>
				<option value="MO">Missouri</option>
				<option value="MT">Montana</option>
				<option value="NE">Nebraska</option>
				<option value="NV">Nevada</option>
				<option value="NH">New Hampshire</option>
				<option value="NJ">New Jersey</option>
				<option value="NM">New Mexico</option>
				<option value="NY">New York</option>
				<option value="NC">North Carolina</option>
				<option value="ND">North Dakota</option>
				<option value="OH">Ohio</option>
				<option value="OK">Oklahoma</option>
				<option value="OR">Oregon</option>
				<option value="PA">Pennsylvania</option>
				<option value="RI">Rhode Island</option>
				<option value="SC">South Carolina</option>
				<option value="SD">South Dakota</option>
				<option value="TN">Tennessee</option>
				<option value="TX">Texas</option>
				<option value="UT">Utah</option>
				<option value="VT">Vermont</option>
				<option value="VA">Virginia</option>
				<option value="WA">Washington</option>
				<option value="WV">West Virginia</option>
				<option value="WI">Wisconsin</option>
				<option value="WY">Wyoming</option>
			</form:select>
		</div>
		
		<div class="formInputGroup">
			<label for="ActivityLevel">Your activity level:</label> 
			<select name="ActivityLevel" id="ActivityLevel">
				<option value="inactive">Inactive</option>
				<option value="sedentary">Sedentary</option>
				<option value="active">Active</option>
				<option value="extremelyActive">Extremely Active</option>
			</select>
		</div>
		
		<div style="align: center; size: 20px">
			<input class="formSubmitButton" type="submit" value="Submit Survey"
				id="submit" />
		</div>
	</form:form>

</html>

<c:import url="/WEB-INF/jsp/footer.jsp" />