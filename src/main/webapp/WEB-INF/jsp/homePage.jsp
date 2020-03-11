
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>NPWS - Home Page</title>

<c:import url="/WEB-INF/jsp/header.jsp">
	<c:param name="button1" value="Home" />
	<c:param name="button2" value="Survey" />
</c:import>

<div>
	<section>
	
		<c:url value="/parkDetails" var="parkDetailsHref" />
		<a href="${parkDetailsHref}"> <img src="img/parks/enp.jpg"
			alt="test image" style="max-size: 30%; max-height: 100%">
		</a>  WELCOME TO THE TEST PAGE BRO!

	</section>
</div>
<c:import url="/WEB-INF/jsp/footer.jsp" />