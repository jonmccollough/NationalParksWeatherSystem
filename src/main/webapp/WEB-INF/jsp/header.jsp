<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE Html>
<html>
<head> 
	<title>National Park Geek</title>

    <c:url value="/css/parksite.css" var="cssHref" />
    <link rel="stylesheet" href="${cssHref}">
    
</head>

    <header>
    		<c:url value="/" var="homePageHref" />
    		<c:url value="/img/logo.png" var="logoSrc" />
        <a href="${homePageHref}">
        		<img src="${logoSrc}" alt="National Park Geek logo" style="max-size: 30%; max-height:100%" />
        </a>
    </header>
    <nav>
        <h2>Explore The National Park System</h2>
        <ul>
            <li><a href="${homePageHref}">Home</a></li>
            <li><a href="survey">Survey</a></li>           
        </ul>
    </nav>
<body>