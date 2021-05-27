<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">VHP - Admin</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-item nav-link " href="admin-home">Home <span
					class="sr-only">(current)</span></a> <a
					class="nav-item nav-link active" href="admin-user ">User</a> <a
					class="nav-item nav-link" href="admin-video">Video</a> <a
					class="nav-item nav-link" href="favorites-thongke1">Favorites</a>
			</div>
		</div>
	</nav>



	<div class="mx-auto" style="width: 400px;">



		<form action="${url}index" method="post">

			<input value="${form.id}" name="id" type="text" class="form-control"
				placeholder="Username" aria-label="Recipient's username"
				aria-describedby="basic-addon2"> <br> <input
				value="${form.password}" name="password" type="text"
				class="form-control" placeholder="Password"
				aria-label="Recipient's username" aria-describedby="basic-addon2"><br>
			<input value="${form.fullname}" name="fullname" type="text"
				class="form-control" placeholder="Fullname"
				aria-label="Recipient's username" aria-describedby="basic-addon2"><br>
			<input value="${form.email}" name="email" type="text"
				class="form-control" placeholder="Email"
				aria-label="Recipient's username" aria-describedby="basic-addon2"><br>


			<div class="form-check">
				<input ${form.admin?'checked':''} value="true"
					class="form-check-input" type="radio" name="admin"
					id="flexRadioDefault1"> <label class="form-check-label"
					for="flexRadioDefault1"> Admin </label>
			</div>
			<div class="form-check">
				<input ${form.admin?'':'checked'} value="false"
					class="form-check-input" type="radio" name="admin"
					id="flexRadioDefault2" checked> <label
					class="form-check-label" for="flexRadioDefault2"> User </label>
			</div>




			<hr>
			<button formaction="${url}/user-create"
				class="btn btn-outline-success">Create</button>
			<button formaction="${url}/user-update"
				class="btn btn-outline-success">Update</button>
			<button formaction="${url}/user-delete"
				class="btn btn-outline-success">Delete</button>
			<button formaction="${url}/admin-user"
				class="btn btn-outline-success">Reset</button>
		</form>
	
	<br>

		<form action="search-user" method="post">
			<div class="input-group mb-3">
				<input type="text" class="form-control" name="fullname"
					placeholder="Search title username"
					aria-label="Recipient's username" aria-describedby="basic-addon2">
				<div class="input-group-append">
					<button class="btn btn-outline-secondary" type="submit">Search</button>
				</div>
			</div>
		</form>
	</div>


	<!-- Bảng -->


	<br>
	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">PASSWORD</th>
				<th scope="col">FULLNAME</th>
				<th scope="col">EMAIL</th>
				<th scope="col">ROLE</th>
				<th scope="col">EDIT</th>
			</tr>
		</thead>

		<c:forEach var="item" items="${items}">
			<tr>
				<td>${item.id}</td>
				<td>${item.password}</td>
				<td>${item.fullname}</td>
				<td>${item.email}</td>
				<td>${item.admin?'Admin':'User'}</td>
				<td><a href="${url}/user-edit/${item.id}">Edit</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>




</body>
</html>