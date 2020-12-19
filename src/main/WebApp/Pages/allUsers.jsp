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
	<title>All User Details</title>
	</head>
	<header><label>List of All Users</label></header>
	<body>
		<br>
		<table border="2" >
			<thead>
				<tr>
   					<th>First Name</th>
    				<th>Last Name</th>
    				<th>Email ID</th>
    				<th>User Type</th>
  				</tr>
  			</thead>
  			<tbody>
  				<c:forEach items="${x}" var="User" varStatus="count">
  					<tr>
   					<td><span id="firstName${count.index+1}">${User.firstName}</span></td>
    				<td><span id="lastName${count.index+1}">${User.lastName}</span></td>
    				<td><span id="email${count.index+1}">${User.email}</span></td>
    				<td><span id="userType${count.index+1}">${User.userType}</span></td>
    				</tr>
  				</c:forEach>
  			</tbody>
		</table>
	</body>
</html>