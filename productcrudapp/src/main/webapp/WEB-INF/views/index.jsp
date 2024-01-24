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
		
		<div class="container mt-2">
	
			<div class="row">
				<div class="col-md-12">
					<h1 class="text-center mb-3">Welcome to Product App!</h1>
					
					<table class="table">
					  <thead class="thead-dark">
					    <tr>
					      <th scope="col">ID</th>
					      <th scope="col">Product Name</th>
					      <th scope="col">Description</th>
					      <th scope="col">Price</th>
					      <th scope="col">Action</th>
					    </tr>
					  </thead>
					  <tbody>
					  
					  	<c:forEach items="${ products }" var="p">
						  	<tr>
						      <th scope="row">${p.pid }</th>
						      <td>${p.name }</td>
						      <td>${p.description }</td>
						      <td class="font-weight-bold"> &dollar; ${p.price }</td>
						      <td>
						      <a href="delete/${p.pid }"><i class="fas fa-trash text-danger" style="font-size: 20px;"></i></a>
						      <a href="update/${p.pid }"><i class="fas fa-pen-nib text-primary" style="font-size: 20px;"></i></a>
						      </td>
						    </tr>
					  	</c:forEach>

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