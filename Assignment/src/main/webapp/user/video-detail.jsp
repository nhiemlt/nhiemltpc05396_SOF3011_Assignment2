<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<main class="bg-dark">
    <div class="container px-0 py-5">
        <div class="row">
            <div class="col-9">
                <div class="card text-bg-dark border border-white">
                    <iframe class="w-100" height="550px"
                        src="${video.youTubeURL}"
                        title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen>
                    </iframe>
                    <div class="card-body">
                        <h4 class="card-title" style="height: 4vh">${video.title}</h4>
                        <p style="height: 9vh">${video.description}</p>
                        <hr>

                        <div class="row">
                            <div class="col-md-6">
                                <a class="nav-link text-white d-flex justify-content-start fa fa-thumbs-up">
                                    <b style="font-family: Times New Roman"> Like</b>
                                </a>
                            </div>
                            <div class="col-md-6">
                                <a class="nav-link text-white d-flex justify-content-end fa fa-share"
                                    data-bs-toggle="modal" data-bs-target="#exampleModal">
                                    <b style="font-family: Times New Roman"> Share</b>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-3">
                <h3 class="text-center text-white">TOP VIEW</h3>
                <c:forEach var="topVideo" items="${top5}" varStatus="loop">
                    <div class="row p-1" style="height: 13vh">
                        <div class="col-6">
                           <a href="VideoDetailServlet?id=${topVideo.videoID}"><img class="card-img-top" src="images/${topVideo.poster}"></a>
                        </div>
                        <div class="col-6">
                            <h6 class="text-white">TOP ${loop.index + 1}: ${topVideo.views} </i></h6>
                            <small class="text-white">${topVideo.title}</small>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</main>
