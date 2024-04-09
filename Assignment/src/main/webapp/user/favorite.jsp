<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<main>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Share video to your friend</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3 mt-3">
                        <label for="email" class="form-label">Email:</label>
                        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Send</button>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row" style="cursor: pointer;">
            <c:forEach var="video" items="${videos}">
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
			                            <div class="col-md-6">
			                                <a class="nav-link text-white d-flex justify-content-start fa fa-thumbs-down">
			                                    <b style="font-family: Times New Roman"> Like</b>
			                                </a>
			                            </div>
			                            <div class="col-md-6">
			                                <a class="nav-link text-white d-flex justify-content-end fa fa-share"
			                                    data-bs-toggle="modal" data-bs-target="#exampleModal">
			                                    <b style="font-family: Times New Roman">Share</b>
			                                </a>
			                            </div>
			                        </div>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </article>
			</c:forEach>
        </div>
        <jsp:include page="/error/error.jsp"></jsp:include>
        <div class="row">
            <ul class="pagination justify-content-center" style="cursor: pointer;">
                <li class="page-item"><a class="page-link">Previous</a></li>
                <li class="page-item"><a class="page-link">1</a></li>
                <li class="page-item"><a class="page-link">2</a></li>
                <li class="page-item"><a class="page-link">3</a></li>
                <li class="page-item"><a class="page-link">Next</a></li>
            </ul>
        </div>
    </div>
</main>