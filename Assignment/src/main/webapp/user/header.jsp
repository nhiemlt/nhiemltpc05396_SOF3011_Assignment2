<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<header class="bg-dark">
	<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
		<div class="container">
			<a href="HomeServlet"><img src="images/logo.png"
				class="navbar-brand" style="width: 50px"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#mynavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="mynavbar">
				<c:choose>
					<c:when test="${page.title eq 'Favorite'}">
						<ul class="navbar-nav me-auto">
							<li class="nav-item"><a class="nav-link" href="HomeServlet">Home</a></li>
							<c:if test="${!isLogin}">
								<li class="nav-item">
									<a class="nav-link active" data-bs-toggle="modal" data-bs-target="#loginModal">My Favorites</a>
								</li>
							</c:if>
							<c:if test="${isLogin}">
								<li class="nav-item">
									<a class="nav-link active" href="FavoriteServlet">My Favorites</a>
								</li>
							</c:if>
							
						</ul>
					</c:when>
					<c:when test="${page.title eq 'Home'}">
						<ul class="navbar-nav me-auto">
							<li class="nav-item"><a class="nav-link active"
								href="HomeServlet">Home</a></li>
							<c:if test="${!isLogin}">
								<li class="nav-item">
									<a class="nav-link" data-bs-toggle="modal" data-bs-target="#loginModal">My Favorites</a>
								</li>
							</c:if>
							<c:if test="${isLogin}">
								<li class="nav-item">
									<a class="nav-link" href="FavoriteServlet">My Favorites</a>
								</li>
							</c:if>
						</ul>
					</c:when>
					<c:otherwise>
						<ul class="navbar-nav me-auto">
							<li class="nav-item active"><a class="nav-link"
								href="HomeServlet">Home</a></li>
							<c:if test="${!isLogin}">
								<li class="nav-item">
									<a class="nav-link" data-bs-toggle="modal" data-bs-target="#loginModal">My Favorites</a>
								</li>
							</c:if>
							<c:if test="${isLogin}">
								<li class="nav-item">
									<a class="nav-link" href="FavoriteServlet">My Favorites</a>
								</li>
							</c:if>
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
							
						<c:if test="${ ! isLogin }">
							<a class="dropdown-item" href="LoginServlet">Login</a>
							<a class="dropdown-item" href="RegisterServlet">Registration</a>
						</c:if>
						<c:if test="${isLogin}">
							<a class="dropdown-item" href="LogoffServlet">Logoff</a>
							<a class="dropdown-item" href="ChangepasswordServlet">Change
								Password</a>
							<a class="dropdown-item" href="EditprofileServlet">Edit
								profile</a>
						</c:if>
						</div>
						
					</div>
				</form>
			</div>
		</div>
	</nav>
</header>
<div id="loginModal" class="modal" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Notification</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <p>Please login to access this feature.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <a href="LoginServlet" class="btn btn-primary">Login</a>
      </div>
    </div>
  </div>
</div>
