
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<title>NPWS - Home Page</title>

<c:import url="/WEB-INF/jsp/header.jsp">
	<c:param name="button1" value="Home" />
	<c:param name="button2" value="Survey" />
</c:import>
<div>
	<section>
		<table>

			<c:forEach items="${park}" var="singlePark">

				
					<tr>
						<td> <a href="<c:url value="parkDetails?id=${(singlePark.parkCode)}" />">
						<img src="img/parks/<c:out value = "${fn:toLowerCase(singlePark.parkCode)}"/>.jpg" style=";" />
						</a>
						</td>
						<td>
							<h1>
								<c:out value="${singlePark.parkname}" />
							</h1> <br> <c:out value="${singlePark.parkDescription}" />
						</td>
					</tr>
			</c:forEach>

		</table>

	</section>
</div>
<c:import url="/WEB-INF/jsp/footer.jsp" />