<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="./base.jsp" %>
</head>
<body>
	
	<div class="container mt-3">
	
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Update Product Detail!</h1>
				<!-- pageContext.request.contextPath if we dont write this after we click on update the form is submitted to wrong location productcrudapp/update/handle-product and we want productcrudapp/handle-product -->
				<form action="${ pageContext.request.contextPath}/handle-product" method="post">
					
					
					<input type="hidden"
							class="form-control"
							id="pid"
							name="pid"
							value="${product.pid }">
					
					<div class="form-group">
						<label for="name">Product Name</label>
						<input type="text"
							class="form-control"
							id="name"
							name="name"
							placeholder="Enter Product Name..."
							value="${product.name }">
					</div>
					
					<div class="form-group">
						<label for="description">Product Description</label>
						<textarea 
							class="form-control"
							rows="5"
							id="description"
							name="description"
							placeholder="Enter the Products description">${product.description }</textarea>
					</div>
					
					<div class="form-group">
						<label for="price">Product Price</label>
						<input type="text"
							class="form-control"
							id="price"
							name="price"
							placeholder="Enter Product Price..."
							value="${product.price }">
					</div>
					
										
					<div class="container text-center">
						<!-- pageContext.request.contextPath this will give project name -->
						<a href="${ pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-warning">Update</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>