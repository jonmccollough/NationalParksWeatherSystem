<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta charset="UTF-8">
<title>National Park Geek</title>
    <c:url value="/css/site.css" var="cssHref" />
    <link rel="stylesheet" href="${cssHref}">
</head>

<body>
    <header>
    		<c:url value="/" var="homePageHref" />
    		<c:url value="/img/parks/weather/logo.png" var="logoSrc" />
        <a href="${homePageHref}">
        		<img src="${logoSrc}" alt="National Park Geek logo" />
        </a>
        <h1>National Park Weather Forecast</h1>
        <p> SUPER COOL SUBTITLE</p>
    </header>
    <nav>
        <h2>Explore The National Park System</h2>
        <p> Use these state of the art web applications to learn more about national parks and the weather! </p>
        <ul>
            <li><a href="homePage">Home</a></li>
            <li><a href="survey">Survey</a></li>           
        </ul>
    </nav>
