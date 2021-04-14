<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>List Customers</title>
	
	<!-- reference our style sheet -->
	
	 <style>
		body {
		    background-image: url("${pageContext.request.contextPath}/resources/images/nature17.jpg");
		}
		
	</style>

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Global Green - Customer Relationship Manager</h2>
		</div>
	</div>
	
	<div id="container">
	
		<div id="content">
		
			<!-- put new button: Add Customer -->
		
			
		
			<!--  add our html table here -->
		
			<table>
				<tr style="background-color:#FFD733">
					<th><input type="button" value="CUSTOMER"
				       onclick="window.location.href='list'; return false;"
				       class="add-button"
			        /></th>
				<th><input type="button" value="SUPPLIER"
			        onclick="window.location.href='../supplier/supplierlist'; return false;"
			        class="add-button"
			     /></th>
			   <th><input type="button" value="ADMIN"
				   onclick="window.location.href='admin'; return false;"
				   class="add-button"
			   /></th>
					
				</tr>
				
				<!-- loop over and print our customers -->
			
						
			</table>
				
		</div>
	
	</div>
	

</body>

</html>









