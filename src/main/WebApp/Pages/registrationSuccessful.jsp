<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<style type="text/css">
			*{
				text-align: center;
				background-color: lightgreen;
			}
			div{
				color: black;
				font-weight: bolder;
				font-size: xx-large;
				}
		</style>
	</head>
	<title>Registration Confirmation</title>
	<body>
		<div>Registered Successfully!!!</div><br>
		<div>${user.getFirstName()} ${user.getLastName()}</div><br>
		<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
		<a style="text-decoration: underline" href="${contextPath}/">LOGIN</a>
	</body>
</html>