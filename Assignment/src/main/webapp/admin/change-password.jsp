<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<main>
	<div class="py-5">
		<div class="container px-5">
			<div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
				<div class="text-center mb-5">
					<img src="images/security.png" style="width: 20vh;">
				</div>
				<div class="row gx-5 justify-content-center">
					<div class="col-lg-8 col-xl-6">
						<jsp:include page="/error/error.jsp"></jsp:include>
						<form name="frmChangePassword">
							<div class="form-floating mb-3">
								<input class="form-control" name="username" type="text" readonly />
								<label for="username">username</label>
							</div>
							<div class="form-floating mb-3">
								<input class="form-control" name="password" type="password"
									required /> <label for="password">Password</label>
							</div>

							<div class="form-floating mb-3">
								<input class="form-control" name="newPassword" type="password"
									pattern="^[A-Za-z0-9@#$%^&+=_]{5,20}$" required /> <label
									for="newPassword">New password</label>
							</div>

							<div class="form-floating mb-3">
								<input class="form-control" name="repeatNewPassword"
									type="password" pattern="^[A-Za-z0-9@#$%^&+=_]{5,20}$" required />
								<label for="repeatNewPassword">Repeat New password</label>
							</div>

							<div class="d-grid">
								<button class="btn btn-primary w-50 mt-5 m-auto">Update
									password</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>