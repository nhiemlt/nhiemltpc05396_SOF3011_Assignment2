var app = angular.module('login', []);

app.controller('login-ctrl', function ($scope, $http) {
    $scope.bl = false;
    $scope.buttonName = 'Log in';
    $scope.title = "WELCOME TO THE FOXY";
    $scope.content = "Login now !";

    $scope.status = {
        type: "password",
        icon : "fa-regular fa-eye"
    }

    $scope.changeEye = function () {
        $scope.status.type == "password" ? $scope.status.type = "text" : $scope.status.type = "password";
        $scope.status.icon == "fa-solid fa-eye-slash" ? $scope.status.icon = "fa-regular fa-eye" : $scope.status.icon = "fa-solid fa-eye-slash";
    };

    $scope.loginForm = function () {
        $scope.bl = false;
        $scope.buttonName = 'Log in';
        $scope.title = "WELCOME TO WEBSITE";
        $scope.content = "Login now !";
        $scope.username = '';
        $scope.email = '';
        $scope.password = '';
        $scope.status = {
            type: "password",
            icon : "fa-regular fa-eye"
        }
        $("#banner").animate({ left: "0px" }, "slow");
        $("#banner").css({ transform: "scaleX(-1)", backgroundImage: "url('images/login-banner2.png')" });
        $("#form").animate({ left: "60vw" }, "slow");
        $(".form-input").animate({ height: "9vh" }, "liner");
        $(".form-group>button").animate({ top: "-3.3vw" }, "liner");
        $("#form").css({ boxShadow: "-3vh 3vh 3vh rgba(0, 0, 0, 0.322)" });
        $("#form-username").animate({ top: "2vw" }, "liner");
        $("#form-password").animate({ top: "9vw" }, "liner");
    };

    $scope.signinForm = function () {
        $scope.bl = true;
        $scope.buttonName = 'Sign up';
        $scope.title = "CREATE AN ACCOUNT";	
        $scope.content = "Let's get started !";
        $scope.username = '';
        $scope.email = '';
        $scope.password = '';    
        $scope.status = {
            type: "password",
            icon : "fa-regular fa-eye"
        }
        $("#banner").animate({ left: "25vw" }, "slow");
        $("#banner").css({ transform: "scaleX(1)", backgroundImage: "url('images/login-banner.png')" });
        $("#form").animate({ left: "10vw" }, "slow");
        $(".form-input").animate({ height: "8vh" }, "liner");
        $(".form-group>button").animate({ top: "-2.7vw" }, "liner");
        $("#form").css({ boxShadow: "3vh 3vh 3vh rgba(0, 0, 0, 0.322)" });
        $("#form-username").animate({ top: "0vh" }, "liner");
        $("#form-password").animate({ top: "11vw" }, "liner");
        $("#btnLogin").animate({ top: "18vw" }, "liner");
    };
 

});