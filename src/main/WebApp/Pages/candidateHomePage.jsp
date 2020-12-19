<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<style type="text/css">
			html{padding:50px;}
			*{
				text-align: center;
				background-color: lightyellow;
			}
			div{
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
	<title>Select Tests</title>
	<div id="msg">Select the Test</div>
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<div><a href="${contextPath}/springAssessment">Spring Assessment</a> <br>
	<a href="${contextPath}/hibernateAssessment">Hibernate Assessment</a></div> <br>
	<a href="${contextPath}/">Logout</a>
</html>