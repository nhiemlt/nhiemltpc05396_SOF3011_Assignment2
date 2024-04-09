<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <title>The Foxy</title>
  <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

  <!-- Bootstrap CSS v5.2.1 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />

  <!--Font Awesome Icons-->
  <script src="https://kit.fontawesome.com/a055717105.js" crossorigin="anonymous"></script>

  <!--Font Googleapis-->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap">

  <!--AngulaJS-->
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>

  <!--Jquery-->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

  <!--CSS-->
  <link rel="stylesheet" href="css/style.css" />

</head>

<body ng-app="login">

  <div class="container-fluid" ng-controller="login-ctrl">
    <div class="row" id="signin-form">
      <form class="col-sm-3" id="form" name="frmLogin" action="LoginServlet"  method="POST">
        <img src="images/logo.png" alt="">
        <br>
        <h3><b>{{title}}</b></h3>
        <h6>{{content}}<br>${message}</h6>
        <div class="form-group" id="form-username">
          <label class="form-label">Username</label>
          <input type="text" id="txtUsername" class="form-input" ng-model="username" name="username"
            placeholder="Input your username" required />
        </div>
        <div class="form-group" id="form-fullname" ng-show="bl">
          <label class="form-label">Fullname</label>
          <input type="text" id="txtFullname" class="form-input" ng-model="fullname" placeholder="Input your Fullname"
            name="fullname" />
        </div>
        <div class="form-group" id="form-email" ng-show="bl">
          <label class="form-label">Email</label>
          <input type="email" id="txtEmail" class="form-input" ng-model="email" placeholder="Input your Email"
            name="email" />
        </div>
        <div class="form-group" id="form-password">
          <label class="form-label">Password</label>
          <input type="{{status.type}}" id="txtPassword" class="form-input" ng-model="password"
            placeholder="Input your password " name="password" required />
          <button type="button" class="{{status.icon}}" ng-click="changeEye()"></button>
          <small></small>
        </div>
        <div class="row" id="special" ng-hide="bl">
          <div class="form-check mb-3" id="remember">
            <label class="form-check-label">
              <input class="form-check-input" type="checkbox" name="remember"> Remember me
            </label>
          </div>
          <div class="form-check mb-3" id="forget-password">
            <label class="form-check-label">
              <a data-bs-toggle="modal" href="#exampleModalToggle" class="text-white">Forgot password ?</a>
            </label>
          </div>
        </div>
        <button type="submit" class="btn btn-secondary rounded-pill" id="btnLogin" ng-show="frmLogin.$valid"">
          {{buttonName}}
        </button>

        <button class="btn btn-secondary rounded-pill" id="btnLogin" ng-hide="frmLogin.$valid">
          {{buttonName}}
        </button>
        <p ng-show="bl">Already have an account? <strong ng-click="loginForm()" id="login"
            style="cursor: pointer;">Login</strong>
        </p>
        <p ng-hide="bl">Don't have an account? <strong ng-click="signinForm()" style="cursor: pointer;">Sign
            up</strong>
          <br>
        </p>

      </form>
      <div class="col-sm-9" id="banner">

      </div>
	 <!-- Modal for input email -->
	<div class="modal fade" id="exampleModalToggle" aria-hidden="true" aria-labelledby="exampleModalToggleLabel"
	    tabindex="-1">
	    <div class="modal-dialog modal-dialog-centered">
	        <form class="modal-content p-3" name="form" action="ForgetPasswordServlet" method="post">
	
	            <div class="modal-header">
	                <h5 class="modal-title" id="exampleModalLabel">Input your email</h5>
	                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	            </div>
	            <div class="modal-body">
	                <div class="mb-3">
	                    <input type="email" class="form-control" placeholder="Enter email" name="emailuser" ng-model="emailuser"
	                        required>
	                </div>
	            </div>
	            <div class="modal-footer">
	                <button type="submit" class="btn btn-secondary" ng-show="form.emailuser.$valid">Submit</button>
	            </div>
	        </form>
	    </div>
	</div>
	
	<!-- Modal for success message -->
	<div class="modal fade" id="exampleModalToggle2" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2"
	    tabindex="-1">
	    <div class="modal-dialog modal-dialog-centered">
	        <div class="modal-content">
	            <div class="modal-header">
	                <h5 class="modal-title" id="exampleModalToggleLabel2">Successful!</h5>
	                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	            </div>
	            <div class="modal-body">
	                Please check your email to receive a temporary password.
	            </div>
	            <div class="modal-footer">
	                <a class="btn btn-primary" data-bs-dismiss="modal">OK</a>
	            </div>
	        </div>
	    </div>
	</div>

    </div>
  </div>

  <script src="js/script.js"></script>

  <!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
    integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
    crossorigin="anonymous"></script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
    integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
    crossorigin="anonymous"></script>
</body>


</html>