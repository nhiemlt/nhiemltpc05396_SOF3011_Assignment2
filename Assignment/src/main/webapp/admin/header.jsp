<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<header class="bg-dark">
	<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
		<div class="container">
			<a href="VideoManagementServlet"><img src="images/logo.png"
				class="navbar-brand" style="width: 50px"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#mynavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="mynavbar">
				<c:choose>
					<c:when test="${page.title eq 'Video Management'}">
						<ul class="navbar-nav me-auto">
							<li class="nav-item"><a class="nav-link active" href="VideoManagementServlet">Video</a></li>
							<li class="nav-item"><a class="nav-link" href="UserManagementServlet">User</a></li>
							<li class="nav-item"><a class="nav-link" href="ReportServlet">Report</a></li>
						</ul>
					</c:when>
					<c:when test="${page.title eq 'User Management'}">
						<ul class="navbar-nav me-auto">
							<li class="nav-item"><a class="nav-link" href="VideoManagementServlet">Video</a></li>
							<li class="nav-item"><a class="nav-link active" href="UserManagementServlet">User</a></li>
							<li class="nav-item"><a class="nav-link" href="ReportServlet">Report</a></li>
						</ul>
					</c:when>
					<c:when test="${page.title eq 'Report'}">
						<ul class="navbar-nav me-auto">
							<li class="nav-item"><a class="nav-link" href="VideoManagementServlet">Video</a></li>
							<li class="nav-item"><a class="nav-link" href="UserManagementServlet">User</a></li>
							<li class="nav-item"><a class="nav-link active" href="ReportServlet">Report</a></li>
						</ul>
					</c:when>
					<c:otherwise>
						<ul class="navbar-nav me-auto">
							<li class="nav-item"><a class="nav-link" href="VideoManagementServlet">Video</a></li>
							<li class="nav-item"><a class="nav-link" href="UserManagementServlet">User</a></li>
							<li class="nav-item"><a class="nav-link" href="ReportServlet">Report</a></li>
						</ul>
					</c:otherwise>
				</c:choose>

				<form class="d-flex">
					<div class="dropdown open">
						<button class="btn btn-secondary rounded-circle" type="button"
							id="triggerId" data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">
							<i class="fa fa-user"></i>
						</button>
						<div class="dropdown-menu mr-5" aria-labelledby="triggerId">
							<li><a class="dropdown-item" href="LoginServlet">Signin</a></li>
							<li><a class="dropdown-item" href="admin_ChangePasswordServlet">Change
									password</a></li>
							<li><a class="dropdown-item" href="admin_EditProfileServlet">Edit
									profile</a></li>
						</div>
					</div>
				</form>
			</div>
		</div>
	</nav>
</header>