<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
	<div class="jumbotron text-center">
		<i class="fas fa-cog fa-spin"></i>
		<h1>Registered products are:</h1>
		<p>Used Technologies are springMVC, myBatis with XML Configuration
			and JSP with JavaScript validation!</p>
	</div>
	
	<div class="container" align="center">
	
	<table border="1" class="table table-striped">
	<tr>
		<td>SNo.</td>
		<td>Product Category</td>
		<td>Product Name</td>
		<td>Product Code</td>
		<td>Product Price</td>
	</tr>

	<c:forEach items="${list}" var="value">
		<tr>
			<td><c:out value="${value.id}" /></td>
			<td><c:out value="${value.p_category}" /></td>
			<td><c:out value="${value.p_name}" /></td>
			<td><c:out value="${value.p_code}" /></td>
			<td><c:out value="${value.p_price}" /></td>
		</tr>

	</c:forEach>

	</table>
	
		<div class="form-group  col-lg-6">
				<a href="/mysaver">
					<button type="button" class="btn btn-primary" >Back</button>
				</a>
		</div>
	
	</div>
	
	
</body>









