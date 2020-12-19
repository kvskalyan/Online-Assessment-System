<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<style type="text/css">
			*{
				text-align: center;
				background-color: lightgreen;
				padding:50px;
			}
			h1{
				color: black;
				font-weight: bolder;
				font-size: xx-large;
			}
		</style>
	<title>Success Page</title>
	</head>
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<h1 id="msg">Congratulations !!! You have passed !!!</h1>
	<a href="${contextPath}/" style="text-decoration: underline; font-size: large; padding:10px;">Exit</a>
</html>