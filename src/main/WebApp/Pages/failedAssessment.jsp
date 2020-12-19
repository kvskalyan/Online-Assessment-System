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
	<title>Failure Page</title>
	</head>
	<h1 id="msg">Sorry !!! Better Luck Next Time !!!</h1>
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<a href="${contextPath}/" style="text-decoration: underline;  font-size: large; padding:10px;">Exit</a>
</html>