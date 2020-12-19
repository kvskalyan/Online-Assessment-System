<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<style type="text/css">
			*{
				width: auto;
				height: auto;
				background-color: lightgreen;
				text-align: center;
			}
			body{border: 5px solid black;border-radius: 10px;}
			div{padding: 20px;}
			form{display: inline;}
			h1,h2 {text-align: center;}
			label{margin:auto; font-weight: bold;}
			#email, #password {cursor: text;margin:auto;}
			#login {background-color: lightblue;color: black;padding: 8px 15px; cursor: pointer;}
			input{
				background-color: white;
			}
			label{
				margin:30px;
			}
		</style>
		<title>Online Assessment - Home Page</title>
	</head>
	<div>
	<h1>Welcome to Online Assessments</h1> <br>
	</div>
	<body>
	<div>
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<form action="${contextPath}/login">
		<h2>Login</h2>
		<label>Email ID:</label> &nbsp;
			<input type="email" id="email" name="email" required="required"/> <br><br>
		<label>Password:</label>&nbsp;
			<input type="password" id="password" name="password" required="required"/> <br><br>
		<input type="submit" id="login" value="Log In" />
	</form><br><br>
	<label>New User ?</label>
	<a href="${contextPath}/register">register here</a>
	</div>
	</body>
</html>