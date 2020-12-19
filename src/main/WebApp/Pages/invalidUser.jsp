<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<style type="text/css">
			*{
				text-align: center;
				background-color: lightpink;
				padding:50px;
			}
			h1{
				color: black;
				font-weight: bolder;
				font-size: xx-large;
			}
		</style>
		<title>Invalid User Page</title>
	</head>
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<h1 id="msg">Sorry you are not a registered User !!!</h1>
	<a href="${contextPath}/" style="text-decoration: underline; font-size: large; padding:10px;">Home Page</a>
</html>