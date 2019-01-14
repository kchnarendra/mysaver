<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<h1>Registered products are:</h1><br>

<table border="1">
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
<form name="myForm" action="/mysaver"  method="get">
 
    
  <input type="submit" value="Back">
  
</form>








