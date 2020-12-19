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
	<title>Hibernate Assessment</title>
	<h1>Hibernate Assessment</h1>
	<body>
		<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
		<form action="${contextPath}/hibernateAssessment" method="post">
			<label>Question 1: What is the full form of ORM?</label><br>
				<input type="radio" id="Q1-Opt1" name="Question1" value="Object Random Memory" required="required"> Object Random Memory<br>
				<input type="radio" id="Q1-Opt2" name="Question1" value="Object Relational Mismatch"> Object Relational Mismatch<br>
				<input type="radio" id="Q1-Opt3" name="Question1" value="Object Relational Mapping"> Object Relational Mapping<br>
				<input type="radio" id="Q1-Opt4" name="Question1" value="Object Random Mapping"> Object Random Mapping<br><br>
			<label>Question 2: In Hibernate, based on directionality, what could be the mappings?</label><br>
				<input type="radio" id="Q2-Opt1" name="Question2" value="uni-directional & bi-directional" required="required"> uni-directional & bi-directional<br>
				<input type="radio" id="Q2-Opt2" name="Question2" value="one-to-many & many-to-one"> one-to-many & many-to-one<br>
				<input type="radio" id="Q2-Opt3" name="Question2" value="inheritance mapping"> inheritance mapping<br>
				<input type="radio" id="Q2-Opt4" name="Question2" value="north & south mapping"> north & south mapping<br><br>
			<label>Question 3: In an Hibernate application, which file would have datasource details?</label><br>
				<input type="radio" id="Q3-Opt1" name="Question3" value="hibernate mapping file" required="required"> hibernate mapping file<br>
				<input type="radio" id="Q3-Opt2" name="Question3" value="configuration file"> configuration file<br>
				<input type="radio" id="Q3-Opt3" name="Question3" value="Model/Entity class"> Model/Entity class<br>
				<input type="radio" id="Q3-Opt4" name="Question3" value="HibernateUtil class"> HibernateUtil class<br><br>
			<label>Question 4: What is the full form of HQL?</label><br>
				<input type="radio" id="Q4-Opt1" name="Question4" value="High-level Query Language" required="required"> High-level Query Language<br>
				<input type="radio" id="Q4-Opt2" name="Question4" value="Hidden Query Language"> Hidden Query Language<br>
				<input type="radio" id="Q4-Opt3" name="Question4" value="Hibernate Query Language"> Hibernate Query Language<br>
				<input type="radio" id="Q4-Opt4" name="Question4" value="Hibernate Quadratic Language"> Hibernate Quadratic Language<br><br>
			<label>Question 5: In an Hibernate application, concurrency can be controlled by setting?</label><br>
				<input type="radio" id="Q5-Opt1" name="Question5" value="concurrency level" required="required"> concurrency level<br>
				<input type="radio" id="Q5-Opt2" name="Question5" value="one-to-one mapping"> one-to-one mapping<br>
				<input type="radio" id="Q5-Opt3" name="Question5" value="many-to-one bi-directional mapping"> many-to-one bi-directional mapping<br>
				<input type="radio" id="Q5-Opt4" name="Question5" value="isolation levels"> isolation levels<br><br>
			<input type="submit" id="submithibernate" value="Submit" class="submit"/>
		</form>
	</body>
</html>