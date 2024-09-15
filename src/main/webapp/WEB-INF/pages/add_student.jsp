<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body class="p-3 mb-2 bg-warning text-dark">
<h1 class="text-center"><u class="text-danger">Add Student</u></h1>
<br><br><br>
<div class="container text-center">
	<form action="saveStudent" method=POST class="form-floating">
		<table class="table table-dark d-flex justify-content-center border p-2 bd-highlight" style="width:60%; height: 230px;">
		<tr>
				<td>Enter student  id</td>
				<td><input type="number" name="stuid" /></td>
			</tr>
			<tr>
				<td>Enter First Name</td>
				<td><input type="text" name="first_name" /></td>
			</tr>
			<tr>
				<td>Enter Last Name</td>
				<td><input type="text" name="last_name" /></td>
			</tr>
			<tr>
				<td colspan="2"> <input type="submit"  class="btn btn-success" value="Save Student"/></td>
				<td><a href="getAllStudents" class="btn btn-primary" role="button">Cancel</a></td>
			</tr>
		</table>
	</form>
	</div>
	
</body>
</html>