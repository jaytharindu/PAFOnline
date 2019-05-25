<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>Customer | home</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<!-- Validations -->
<script src="static/js/validation.js" type="text/javascript"></script>
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/welcome" class="navbar-brand">sellNbye</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/register">Customer Registration</a></li>
					<li><a href="/show-customers">View Customer Table</a></li>
				</ul>
			</div>
		</div>
	</div>

	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div class="container" id="homediv">
				<div class="jumbotron text-center"></div>
			</div>

		</c:when>

		<c:when test="${mode=='MODE_REGISTER'}">
			<div class="container text-center">
				<h3>Customer Registration</h3>
				<hr>
				<form name="welcomepage" class="form-horizontal" method="POST" action="save-customer">
					<input type="hidden" name="id" value="${customer.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">First Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="firstname"
								value="${customer.firstname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Last Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="lastname"
								value="${customer.lastname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Email</label>
						<div class="col-md-7">
							<input type="email" class="form-control" name="email"
								value="${customer.email }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Age </label>
						<div class="col-md-1">
							<!-- <input type="text" class="form-control" name="age"
								value="${customer.age }" /> -->
							<input type="number" class="form-control" size="6" name="age"
								min="16" max="99" value="${customer.age }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${customer.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Register"
							onclick="return validateForm();" />
					</div>
				</form>
			</div>
		</c:when>
		<c:when test="${mode=='ALL_CUSTOMERS' }">
			<div class="container text-center" id="tasksDiv">
				<h3>Customer Table</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>First Name</th>
								<th>LastName</th>
								<th>Email</th>
								<th>Age</th>
								<th>Delete</th>
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="customer" items="${customers }">
								<tr>
									<td>${customer.id}</td>
									<td>${customer.firstname}</td>
									<td>${customer.lastname}</td>
									<td>${customer.email}</td>
									<td>${customer.age}</td>
									<td><a href="/delete-customer?id=${customer.id }"><span
											class="glyphicon glyphicon-trash"></span></a></td>
									<td><a href="/edit-customer?id=${customer.id }"><span
											class="glyphicon glyphicon-pencil"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Update Customer</h3>
				<hr>
				<form name="welcomepage" class="form-horizontal" method="POST" action="save-customer">
					<input type="hidden" name="id" value="${customer.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">First Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="firstname"
								value="${customer.firstname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Last Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="lastname"
								value="${customer.lastname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Email</label>
						<div class="col-md-7">
							<input type="email" class="form-control" name="email"
								value="${customer.email }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Age </label>
						<div class="col-md-1">
							<!--  <input type="text" class="form-control" name="age"
								value="${customer.age }" /> -->
							<input type="number" class="form-control" size="6" name="age"
								min="16" max="99" value="${customer.age }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${customer.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Update" onclick="return validateForm();"/>
					</div>
				</form>
			</div>
		</c:when>

	</c:choose>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>