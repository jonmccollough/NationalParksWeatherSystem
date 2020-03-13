
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  

<title>NPWS - Home Page</title>

<c:import url="/WEB-INF/jsp/header.jsp">
	<c:param name="button1" value="Home" />
	<c:param name="button2" value="Survey" />
</c:import>
<div>
	<section>
	<table>
		
		<c:forEach items="${park}" var= "singlePark">
		
		<tr>
		<td>
		<img src="img/parks/<c:out value = "${fn:toLowerCase(singlePark.parkCode)}"/>.jpg"/>
		</td>
		<td>
		<h1><c:out value ="${singlePark.parkname}"/></h1>
		<br>
		<c:out value="${singlePark.parkDescription}" />
		</td>
		</tr>

		</c:forEach>

	</table>


	
	
		<%-- <c:url value="/parkDetails" var="parkDetailsHref" />
		<a href="${parkDetailsHref}"> <img src="img/parks/enp.jpg"
			alt="test image" style="max-size: 30%; max-height: 100%"> --%>
		  WELCOME TO THE TEST PAGE BRO!

	</section>
</div>
<c:import url="/WEB-INF/jsp/footer.jsp" />