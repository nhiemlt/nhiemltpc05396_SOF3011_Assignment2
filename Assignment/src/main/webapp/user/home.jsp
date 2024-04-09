<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<main>
	
	<div class="bg-dark">

		<div class="container d-flex">
			<div class="text-center m-auto">
				<h1>
					<span class="text-info">The Foxy</span>
				</h1>
				<p class="text-white">Welcome to our premier online streaming
					platform! Discover a vast library of movies, TV shows, and
					documentaries right at your fingertips. With a user-friendly
					interface, seamless navigation, and high-definition streaming, we
					bring the magic of cinema directly to your screen. Whether you're
					into action, romance, comedy, or thrillers, we have something for
					everyone. Sit back, relax, and let the entertainment begin.
					Experience the ultimate movie-watching experience with us!</p>
				
				<div class="input-group py-5" style="padding: 0 20vh 0 20vh">
					<input class="form-control" type="text"
						placeholder="Search a video"> <span
						class="input-group-text" ><i class="fa fa-search m-auto"></i></span>
				</div>
			</div>
			<img class="img w-25 mb-5" src="images/image.png" alt="">
		</div>

	</div>
	<div class="container">
		<div class="row" style="cursor: pointer;">
		<jsp:include page="/error/error.jsp"></jsp:include>
				<c:forEach var="video" items="${videos}">
			    <!-- Modal -->
			    <div class="modal fade" id="send${video.videoID}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			        <div class="modal-dialog modal-dialog-centered">
			            <div class="modal-content">
			                <div class="modal-header">
			                    <h5 class="modal-title" id="exampleModalLabel">Share video to your friend</h5>
			                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			                </div>
			                <div class="modal-body">
			                    <div class="mb-3 mt-3">
			                        <label for="email" class="form-label">Email:</label>
			                        <input type="email" class="form-control" id="emailInput${video.videoID}" placeholder="Enter email" name="email${video.videoID}">
			                    </div>
			                </div>
			                <div class="modal-footer">
			                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
			                    <button type="button" class="btn btn-primary" onclick="sendEmail('${video.videoID}')">Send</button>
			                </div>
			            </div>
			        </div>
			    </div>
			    <article class="col-md-4">
			        <div class="row mt-4">
			            <div class="col-md-12 p-3">
			                <div class="card text-bg-dark border border-white">
			                    <a href="VideoDetailServlet?id=${video.videoID}"><img class="card-img-top" src="images/${video.poster}" /></a>
			                    <span class="position-absolute top-0 end-0 text-white px-1" style="background-color: rgba(0, 0, 0, 0.3);">${video.views} views</span>
			                    <div class="card-body">
			                        <h4 class="card-title" style="height: 6vh">${video.title}</h4>
			                        <hr>
			                        <div class="row">
			                            <c:if test="${!isLogin}">
			                                <div class="col-md-6">
			                                    <a class="nav-link text-white d-flex justify-content-start fa fa-thumbs-up" data-bs-toggle="modal" data-bs-target="#login">
			                                        <b style="font-family: Times New Roman"> Like</b>
			                                    </a>
			                                </div>
			                                <div class="col-md-6">
			                                    <a class="nav-link text-white d-flex justify-content-end fa fa-share" data-bs-toggle="modal" data-bs-target="#login" data-bs-toggle="modal" data-bs-target="send${video.videoID}">
			                                        <b style="font-family: Times New Roman">Share</b>
			                                    </a>
			                                </div>
			                            </c:if>
			                            <c:if test="${isLogin}">
			                                <div class="col-md-6">
			                                    <a class="nav-link text-white d-flex justify-content-start fa fa-thumbs-up" href="LikeServlet?videoID=${video.videoID}">
			                                        <b style="font-family: Times New Roman"> Like</b>
			                                    </a>
			                                </div>
			                                <div class="col-md-6">
			                                    <a class="nav-link text-white d-flex justify-content-end fa fa-share" data-bs-toggle="modal" data-bs-target="#send${video.videoID}">
			                                        <b style="font-family: Times New Roman">Share</b>
			                                    </a>
			                                </div>
			                            </c:if>
			                        </div>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </article>
			</c:forEach>
			
			<script>
			    function sendEmail(videoID) {
			        var email = document.getElementById("emailInput" + videoID).value;
			        var url = "ShareServlet?id=" + videoID + "&email=" + encodeURIComponent(email);
			        window.location.href = url;
			    }
			</script>

		</div>
		<div class="row">
			<ul class="pagination justify-content-center"
				style="cursor: pointer;">
				<li class="page-item"><a class="page-link">Previous</a></li>
				<li class="page-item"><a class="page-link">1</a></li>
				<li class="page-item"><a class="page-link">2</a></li>
				<li class="page-item"><a class="page-link">3</a></li>
				<li class="page-item"><a class="page-link">Next</a></li>
			</ul>
		</div>
	</div>
</main>


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