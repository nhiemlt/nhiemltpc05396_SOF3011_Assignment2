<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <main class="container">
        <div class="col mt-5">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="videoEditing-tab" data-bs-toggle="tab"
                        data-bs-target="#videoEditing" type="button" role="tab" aria-controls="videoEditing"
                        aria-selected="true">Video</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="videoList-tab" data-bs-toggle="tab" data-bs-target="#videoList"
                        type="button" role="tab" aria-controls="videoList" aria-selected="false">Video List</button>
                </li>
            </ul>

            <div class="tab-content mb-5" id="myTabContent">
                <div class="tab-pane fade show active" id="videoEditing" role="tabpanel"
                    aria-labelledby="videoEditing-tab">
                    <form action="" method="post">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-3 mt-3">
                                        <div class="border p-3" style="width: 30vh; height: 22vh;">
                                            <img src="images/poster1.png" alt="" class="img-fluid w-100">
                                        </div>
                                    </div>
                                    <div class="col-9">
                                        <div class="form-group pb-2">
                                            <label for="youtubeId">Youtube ID</label>
                                            <input type="text" class="form-control" name="youtubeId" id="youtubeId"
                                                aria-describedby="youtubeIdHid" placeholder="Youtube ID">
                                        </div>
                                        <div class="form-group pb-2">
                                            <label for="vidoeTitle">Video Title</label>
                                            <input type="text" class="form-control" name="vidoeTitle" id="vidoeTitle"
                                                aria-describedby="videoTitle" placeholder="Video Title">
                                        </div>
                                        <div class="form-group pb-2">
                                            <label for="viewCount">View Count</label>
                                            <input type="text" class="form-control" name="viewCount" id="viewCount"
                                                aria-describedby="viewCountHid" placeholder="View Count">
                                        </div>
                                        <div class="from-check form-check-inline  pb-2">
                                            <label><input type="radio" class="form-chck-input" name="status" id="status"
                                                    value="true">Active</label>
                                            <label><input type="radio" class="form-chck-input" name="status" id="status"
                                                    value="false">Inactive</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <label for="description">Description</label>
                                        <textarea name="description" id="description" cols="30" rows="4"
                                            class="form-control"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer text-muted">
                                <button class="btn btn-primary">Create</button>
                                <button class="btn btn-warning">Update</button>
                                <button class="btn btn-danger">Delete</button>
                                <button class="btn btn-info">Reset</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="tab-pane fade mb-5" id="videoList" role="tabpanel" aria-labelledby="videoList-tab">
                    <table class="table table-striped border bordered">
                        <thead>
                            <tr>
                                <th></th>
                                <th scope="col">Youtube ID</th>
                                <th scope="col">Video Title</th>
                                <th scope="col">View Count</th>
                                <th scope="col">Status</th>
                                <th scope="col">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>avengers123</td>
                                <td>The Avengers</td>
                                <td>1,234,567,890</td>
                                <td>Active</td>
                                <td>
                                    <a href="#" class="nav-link"><i class="fa fa-edit" aria-hidden="true"></i>Edit</a>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>avengersageofultron123</td>
                                <td>Avengers: Age of Ultron</td>
                                <td>987,654,321</td>
                                <td>Active</td>
                                <td>
                                    <a href="#" class="nav-link"><i class="fa fa-edit" aria-hidden="true"></i>Edit</a>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>inception123</td>
                                <td>Inception</td>
                                <td>876,543,210</td>
                                <td>Active</td>
                                <td>
                                    <a href="#" class="nav-link"><i class="fa fa-edit" aria-hidden="true"></i>Edit</a>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>darkknight123</td>
                                <td>The Dark Knight</td>
                                <td>765,432,109</td>
                                <td>Active</td>
                                <td>
                                    <a href="#" class="nav-link"><i class="fa fa-edit" aria-hidden="true"></i>Edit</a>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>lordoftherings123</td>
                                <td>The Lord of the Rings</td>
                                <td>654,321,098</td>
                                <td>Active</td>
                                <td>
                                    <a href="#" class="nav-link"><i class="fa fa-edit" aria-hidden="true"></i>Edit</a>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>avatar123</td>
                                <td>Avatar</td>
                                <td>543,210,987</td>
                                <td>Active</td>
                                <td>
                                    <a href="#" class="nav-link"><i class="fa fa-edit" aria-hidden="true"></i>Edit</a>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>jurassicpark123</td>
                                <td>Jurassic Park</td>
                                <td>432,109,876</td>
                                <td>Active</td>
                                <td>
                                    <a href="#" class="nav-link"><i class="fa fa-edit" aria-hidden="true"></i>Edit</a>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>harrypotter123</td>
                                <td>Harry Potter</td>
                                <td>321,098,765</td>
                                <td>Active</td>
                                <td>
                                    <a href="#" class="nav-link"><i class="fa fa-edit" aria-hidden="true"></i>Edit</a>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>forrestgump123</td>
                                <td>Forrest Gump</td>
                                <td>210,987,654</td>
                                <td>Active</td>
                                <td>
                                    <a href="#" class="nav-link"><i class="fa fa-edit" aria-hidden="true"></i>Edit</a>
                                </td>
                            </tr>
                        </tbody>    
                    </table>
                    <button type="button" class="btn btn-primary"><i class="fa-solid fa-trash-can"></i>
                        Delete
                    </button>

                </div>
            </div>
        </div>
    </main>
 