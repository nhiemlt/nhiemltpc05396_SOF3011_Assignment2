<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<main class="container">
    <div class="row mt-4">
        <div class="col">
            <ul class="nav nav-tabs mt-5" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="videoEditing-tab" data-bs-toggle="tab" data-bs-target="#videoEditing" type="button" role="tab" aria-controls="videoEditing" aria-selected="true">Video</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="videoList-tab" data-bs-toggle="tab" data-bs-target="#videoList" type="button" role="tab" aria-controls="videoList" aria-selected="false">Video List</button>
                </li>
            </ul>

            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active mb-5" id="videoEditing" role="tabpanel" aria-labelledby="videoEditing-tab">
                    <form method="post">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group mt-3 mb-3">
                                            <label for="username">Username</label>
                                            <input type="text" class="form-control" name="username" id="username" aria-describedby="usernameHid" placeholder="Username">
                                        </div>
                                        <div class="form-group mt-3 mb-3">
                                            <label for="Fullname">Fullname</label>
                                            <input type="text" class="form-control" name="fullname" id="fullname" aria-describedby="fullnameHid" placeholder="Fullname">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group mt-3 mb-3">
                                            <label for="password">Password</label>
                                            <input type="password" class="form-control" name="password" id="password" aria-describedby="passwordHid" placeholder="Password">
                                        </div>
                                        <div class="form-group mt-3 mb-3">
                                            <label for="email">Email</label>
                                            <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHid" placeholder="Email">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <div class="mt-3 mb-3">
                                            <label for="description">Description</label>
                                            <textarea name="description" id="description" rows="4" class="form-control"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer text-muted py-3">
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
                                <th>Username</th>
                                <th>Fullname</th>
                                <th>Email</th>
                                <th>Role</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>user01</td>
                                <td>Nguyễn Văn A</td>
                                <td>nguyenvana@gmail.com</td>
                                <td>Admin</td>
                                <td><a href="#" class="nav-link"><i class="fa fa-edit" aria-hidden="true"></i> Edit</a></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>user02</td>
                                <td>Trần Thị B</td>
                                <td>tranthib@gmail.com</td>
                                <td>Member</td>
                                <td><a href="#" class="nav-link"><i class="fa fa-edit" aria-hidden="true"></i> Edit</a></td>
                            </tr>
                            <tr>
                            <td><input type="checkbox"></td>
                            <td>user03</td>
                            <td>Lê Văn C</td>
                            <td>levanc@gmail.com</td>
                            <td>Member</td>
                            <td>
                                <a href="#" class="nav-link"><i class="fa fa-edit" aria-hidden="true"></i> Edit</a>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>user04</td>
                            <td>Phạm Thị D</td>
                            <td>phamthid@gmail.com</td>
                            <td>Admin</td>
                            <td>
                                <a href="#" class="nav-link"><i class="fa fa-edit" aria-hidden="true"></i> Edit</a>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>user05</td>
                            <td>Hoàng Văn E</td>
                            <td>hoangvane@gmail.com</td>
                            <td>Member</td>
                            <td>
                                <a href="#" class="nav-link"><i class="fa fa-edit" aria-hidden="true"></i> Edit</a>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>user06</td>
                            <td>Ngô Thị F</td>
                            <td>ngothif@gmail.com</td>
                            <td>Member</td>
                            <td>
                                <a href="#" class="nav-link"><i class="fa fa-edit" aria-hidden="true"></i> Edit</a>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>user07</td>
                            <td>Đặng Văn G</td>
                            <td>dangvang@gmail.com</td>
                            <td>Admin</td>
                            <td>
                                <a href="#" class="nav-link"><i class="fa fa-edit" aria-hidden="true"></i> Edit</a>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>user08</td>
                            <td>Phan Thị H</td>
                            <td>phanthih@gmail.com</td>
                            <td>Member</td>
                            <td>
                                <a href="#" class="nav-link"><i class="fa fa-edit" aria-hidden="true"></i> Edit</a>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>user09</td>
                            <td>Đỗ Văn I</td>
                            <td>dovan@gmail.com</td>
                            <td>Admin</td>
                            <td>
                                <a href="#" class="nav-link"><i class="fa fa-edit" aria-hidden="true"></i> Edit</a>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>user10</td>
                            <td>Lý Thị K</td>
                            <td>lythik@gmail.com</td>
                            <td>Member</td>
                            <td>
                                <a href="#" class="nav-link"><i class="fa fa-edit" aria-hidden="true"></i> Edit</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>

                    <button type="button" class="btn btn-primary">
                        <i class="fa-solid fa-trash-can"></i> Delete
                    </button>
                </div>
            </div>
        </div>
    </div>
</main>