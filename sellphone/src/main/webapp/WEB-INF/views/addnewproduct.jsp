
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Product Page</title>
<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}

.tg .tg-4eph {
	background-color: #f9f9f9
}
</style>

</head>
<body>

	<table border="2">
		<h1>Add a Product</h1>

		<spring:url value="/add" var="userActionUrl" />

		<form:form method="get" modelAttribute="product"
			action="${userActionUrl}">

			<c:if test="${!empty product.name}">
				<form:label path="id">
					<spring:message text="ID" />
				</form:label>
				<form:input path="id" readonly="true" size="8" disabled="true" />
				<br />
				<!-- <form:hidden path="id" /> -->
			</c:if>
			<spring:bind path="name">
				<tr>
					<td><label class="col-sm-2 control-label">Product
							Name:</label></td>
					<td><form:input path="name" type="text" class="form-control"
							id="name" placeholder="Product Name" /></td>
				</tr>
			</spring:bind>
			<br />
			<spring:bind path="category">
				<tr>
					<td><label class="col-sm-2 control-label">Category</label></td>
					<td><form:input path="category" class="form-control"
							id="category" placeholder="Category" /></td>
				</tr>
			</spring:bind>
			
			<spring:bind path="quantity">
				<tr>
					<td><label class="col-sm-2 control-label">Quantity</label></td>
					<td><form:input path="quantity" class="form-control"
							id="quantity" placeholder="Quantity" /></td>
			</spring:bind>
			<br />
			<spring:bind path="price">
				<tr>
					<td><label class="col-sm-2 control-label">Price</label></td>
					<td><form:input path="price" class="form-control" id="price"
							placeholder="price" /></td>
			</spring:bind>
			<tr align="center">
			<td colspan="2"><c:if test="${!empty product.name}">
					<input type="submit" value="<spring:message text="Edit Product"/>" />
				</c:if> <c:if test="${empty product.name}">
					<input type="submit" value="<spring:message text="Add Product"/>" />
				</c:if></td>
			

		</form:form>

	</table>

	<%-- <script>
		$(document).ready(function() {
			var searchCondition = '${searchCondition}';

			$('.table').DataTable({
				"oSearch" : {
					"sSearch" : searchCondition
				}
			});
		});
	</script>

	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h3>All Products</h3>
			</div>
			<table class="table table-striped table-hover">

				<thead>
					<tr class="bg-success">
						<th>ID</th>
						<th>Name</th>
						<th>Category</th>
						<th>Price</th>
						<th>Quantity</th>
						<th>Sub Total</th>
						<th></th>
						<th>Edit</th>
						<th>Delete</th>

					</tr>
				</thead>
				<c:forEach items="${product}" var="product">
					<tr>
						<td>${product.id}</td>
						<td>${product.name}</td>
						<td>${product.category}</td>
						<td>${product.price}USD</td>
						<td>${product.quantity}</td>
						<td>${product.quantity * product.price}</td>
						<td>Order now</td>
						<td><a href="<c:url value='/edit/${product.id}' />">Edit</a></td>
						<td><a href="<c:url value='/remove/${product.id}' />">Delete</a></td>
					</tr>
				</c:forEach>
			</table> --%>
</body>
</html>