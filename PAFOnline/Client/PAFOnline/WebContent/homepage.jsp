<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Order Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<body>

<div class="container">
  <h2>Enter Details</h2>
  <form class="form-horizontal" action="/action_page.php">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Name :</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="name" placeholder="Enter Name" name="name">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Addrerss :</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="address" placeholder="Enter Address" name="address">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Paying Mehtod :</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="paymethod" placeholder="Enter Paying Method" name="paymethod">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
</div>

<div class="container text-center" id="tasksDiv">
		<h3>Order Grid</h3>
		<hr>
		<div class="table-responsive">
			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Address</th>
						<th>Pay Method</th>
					</tr>
				</thead>
				<tbody>
						<tr>
							<td>${customer.id}</td>
							<td>${customer.firstname}</td>
							<td>${customer.lastname}</td>
							<td>${customer.email}</td>
							<td>${customer.age}</td>
						</tr>
				</tbody>
			</table>
		</div>
	</div>

</body>


</body>
</html>