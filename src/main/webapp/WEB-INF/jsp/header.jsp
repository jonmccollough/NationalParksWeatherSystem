<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE Html>
<html>
<head> 
	<title>National Park Geek</title>
    <c:url value="/WEB-INF/css/parksite.css" var="cssHref" />
    <link rel="stylesheet" href="${cssHref}">
</head>

<body>
    <header>
    		<c:url value="/" var="homePageHref" />
    		<c:url value="/img/logo.png" var="logoSrc" />
        <a href="${homePageHref}">
        		<img src="${logoSrc}" alt="National Park Geek logo" style="max-width: 30%" />
        </a>
        <h1>National Park Weather Forecast</h1>
        <p> SUPER COOL ---------SUBTITLE</p>
    </header>
    <nav>
        <h2>Explore The National Park System</h2>
        <p> Use this site to learn more about national parks and the current weather! </p>
        <ul>
            <li><a href="${homePageHref}">Home</a></li>
            <li><a href="survey">Survey</a></li>           
        </ul>
    </nav>
