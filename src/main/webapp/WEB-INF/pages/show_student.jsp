<%@page import="com.nit.model.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<script type="text/javascript">
	function deleteStudent(str) {
		if (confirm("Do you want to delete")) {
			document.frm.stu_id.value = str;
			document.frm.action = "deleteStudent";
			document.frm.submit();
		}

	}
</script>
</head>
<body class="p-3 mb-2 bg-secondary text-white">
	<h1 class="text-center"><u>Students List</u></h1>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="showStudentPage" class="btn btn-info">Add Student</a>
	<br>
	<br>
	<div class="container">
	<table class="table table-striped">
		<form >
			<input type="hidden" name="stu_id" />



			<%
			List<Student> students = (List<Student>) request.getAttribute("students");
			for (Student st : students) {
			%>
			<tr>
				<td><%=st.getStuId()%></td>
				<td><%=st.getFName()%></td>
				<td><%=st.getLName()%></td>
				<td><input type="button" class="btn btn-danger" value="Delete"
					onclick="deleteStudent('<%=st.getStuId()%>')" /></td>
				<td><input type="button" class="btn btn-warning" value="Edit" /></td>
			</tr>
			<%
			}
			%>

		</form>
		</div>
	</table>

	<div class="progress">
		<div class="progress-bar progress-bar-striped progress-bar-animated"
			role="progressbar" aria-valuenow="75" aria-valuemin="0"
			aria-valuemax="100" style="width: 75%"></div>
	</div>

</body>
</html>