<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<style type="text/css">
			*{background-color: lightyellow;}
			h1{
				font-weight: bolder;
				font-size: x-large;
				text-decoration: underline;
				text-align: center;
			}
			form{padding: 50px; padding-top: 20px; padding-left: 100px;}
			label{
				font-weight: bolder;
				text-align: center;
				}
			input{
				cursor:pointer;
				display: inline-block;
			}
			.submit{background-color: lightgreen; padding: 10px}
		</style>
	</head>
	<title>Spring Assessment</title>
	<h1>Spring Assessment</h1>
	<body>
		<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
		<form action="${contextPath}/springAssessment" method="post">
			<label>Question 1: What is spring?</label><br>
				<input type="radio" id="Q1-Opt1" name="Question1" value="J2EE App Server" required="required"> J2EE App Server<br>
				<input type="radio" id="Q1-Opt2" name="Question1" value="J2EE App Development Framework" > J2EE App Development Framework<br>
				<input type="radio" id="Q1-Opt3" name="Question1" value="Configuration Management Tool"  > Configuration Management Tool<br>
				<input type="radio" id="Q1-Opt4" name="Question1" value="Build Tool" > Build Tool<br><br>
			<label>Question 2: What is the full form of IOC?</label><br>
				<input type="radio" id="Q2-Opt1" name="Question2" value="Inversion Of Control" required="required"> Inversion Of Control<br>
				<input type="radio" id="Q2-Opt2" name="Question2" value="Interjection of Control" > Interjection of Control<br>
				<input type="radio" id="Q2-Opt3" name="Question2" value="Internal Object Control"> Internal Object Control<br>
				<input type="radio" id="Q2-Opt4" name="Question2" value="In-built Object Control"> In-built Object Control<br><br>
			<label>Question 3: What is the full form of AOP?</label><br>
				<input type="radio" id="Q3-Opt1" name="Question3" value="Anticipation of Properties"  required="required"> Anticipation of Properties<br>
				<input type="radio" id="Q3-Opt2" name="Question3" value="Aspect Oriented Programming"> Aspect Oriented Programming<br>
				<input type="radio" id="Q3-Opt3" name="Question3" value="Associated Object Programming"> Associated Object Programming<br>
				<input type="radio" id="Q3-Opt4" name="Question3" value="Anti Object Programming"> Anti Object Programming<br><br>
			<label>Question 4: Which of the below is a spring container?</label><br>
				<input type="radio" id="Q4-Opt1" name="Question4" value="View Resolver"  required="required"> View Resolver<br>
				<input type="radio" id="Q4-Opt2" name="Question4" value="Application Context"> Application Context<br>
				<input type="radio" id="Q4-Opt3" name="Question4" value="Handler Mapping"> Handler Mapping<br>
				<input type="radio" id="Q4-Opt4" name="Question4" value="Dispatcher Servlet"> Dispatcher Servlet<br><br>
			<label>Question 5: Which is Spring's front Controller Implementation?</label><br>
				<input type="radio" id="Q5-Opt1" name="Question5" value="Bean Factory"  required="required"> Bean Factory<br>
				<input type="radio" id="Q5-Opt2" name="Question5" value="Class Path Application Context"> Class Path Application Context<br>
				<input type="radio" id="Q5-Opt3" name="Question5" value="Application Context"> Application Context<br>
				<input type="radio" id="Q5-Opt4" name="Question5" value="Dispatcher Servlet"> Dispatcher Servlet<br><br>
			<input type="submit" id="submitspring" value="Submit" class="submit"/>
		</form>
	</body>
</html>