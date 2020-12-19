<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
	<style type="text/css">
			html{padding:50px;}
			*{
				text-align: center;
				background-color: lightcyan;
			}
			label{
				font-weight: bold;
				font-size: xx-large;
			}
			table{
				display: inline-table;
			}
	</style>
	<title>All Tests Details</title>
	</head>
	<header><label>List of Candidates and Tests</label></header>
	<body>
		<br>
		<table border="2" >
			<thead>
				<tr>
   					<th>Test Date</th>
    				<th>Assessment</th>
    				<th>Test Marks</th>
    				<th>Email ID</th>
    				<th>Total Marks</th>
    				<th>Result</th>
  				</tr>
  			</thead>
  			<tbody>
  				<c:forEach items="${x}" var="Test" varStatus="count">
  					<tr>
   					<td><span id="testDate${count.index+1}">${Test.date}</span></td>
    				<td><span id="assessment${count.index+1}">${Test.assessment}</span></td>
    				<td><span id="marks${count.index+1}">${Test.tmarks}</span></td>
    				<td><span id="email${count.index+1}">${Test.email}</span></td>
    				<td><span id="totalMarks${count.index+1}">${Test.maxmarks}</span></td>
    				<td><span id="result${count.index+1}">${Test.result}</span></td>
    				</tr>
  				</c:forEach>
  			</tbody>
		</table>
	</body>
</html>