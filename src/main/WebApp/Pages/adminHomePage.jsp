<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<style type="text/css">
			html{padding:50px;}
			*{
				text-align: center;
				background-color: lightcyan;
			}
			h2{
				color: black;
				font-weight: bolder;
				font-size: xx-large;
				}
			a{
				font-weight: bolder;
				font-size: x-large;
			}
		</style>
	</head>
	<title>Select Reports</title>
	<h2 id="msg">Select Reports</h2>
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<div><a href="${contextPath}/users/all">View list of all candidates</a> <br>
	<a href="${contextPath}/tests/all">View list of all tests taken</a></div> <br>
	<a href="${contextPath}/">Logout</a>
</html>