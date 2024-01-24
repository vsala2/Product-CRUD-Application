<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<!-- jstl -->
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ include file="./base.jsp" %>
	<title>Home</title>
	</head>

	<body>
		
		<div class="container mt-3">
	
			<div class="row">
				<div class="col-md-12">
					<h1 class="text-center mb-3">Welcome to Product App!</h1>
					
					<table class="table table-striped table-dark">
					  <thead>
					    <tr>
					      <th scope="col">Sr. No</th>
					      <th scope="col">Product Name</th>
					      <th scope="col">Description</th>
					      <th scope="col">Price</th>
					      <th scope="col">Action</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <th scope="row">1</th>
					      <td>Mark</td>
					      <td>Otto</td>
					      <td>@mdo</td>
					    </tr>

					  </tbody>
					</table>
					
					<div class="container text-center">
						<a href="add-product" class="btn btn-primary">Add Product</a>
					</div>
				</div>
			</div>
		</div>
	
	</body>
</html>