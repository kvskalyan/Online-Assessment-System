<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<style type="text/css">
			*{
				width: auto;
				height: auto;
				background-color: lightblue;
				text-align: center;
			}
			body{border: 5px solid black;border-radius: 10px;}
			div{padding: 20px;}
			form{display: inline;}
			h1{text-align: center;}
			label{margin:auto; font-weight: bold;}
			#email, #password,#firstname,#lastname{cursor: text;margin: auto;}
			#register {background-color: lightgreen;color: black;padding: 8px 15px; cursor: pointer;}
			input{background-color: white;}
			label{}
		</style>
	<title>Registration Page</title>
	</head>
	<div>
	<h1>Registration</h1>
	</div>
	<body>
	<div>
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<form action="${contextPath}/register" method="post">
		<label>First Name:</label>&nbsp;
			<input type="text" id="firstname" name="firstname" pattern="[A-Za-z]{1,50}" required="required" /> <br><br>
		<label>Last Name:</label>&nbsp;
			<input type="text" id="lastname" name="lastname" pattern="[A-Za-z]{1,50}" required="required"/> <br><br>	
		<label>Email ID:</label>&nbsp;
			<input type="email" id="email" name="email" required="required"/> <br><br>
		<label>Password:</label>&nbsp;
			<input type="password" id="password" name="password" minlength="8" required="required"/> <br><br>
		<input type="submit" id="register" value="REGISTER"/>
	</form>
	</div>
	</body>
</html>