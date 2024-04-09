<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <main class="container">
        <div class="col mt-5">
            <ul class="nav nav-tabs  mt-3" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="videoEditing-tab" data-bs-toggle="tab"
                        data-bs-target="#videoEditing" type="button" role="tab" aria-controls="videoEditing"
                        aria-selected="true">Favorites</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="videoList-tab" data-bs-toggle="tab" data-bs-target="#videoList"
                        type="button" role="tab" aria-controls="videoList" aria-selected="false">Favorites
                        User</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="shareFriends-tab" data-bs-toggle="tab" data-bs-target="#shareFriends"
                        type="button" role="tab" aria-controls="shareFriends" aria-selected="false">Share
                        Friends</button>
                </li>
            </ul>

            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active mb-5" id="videoEditing" role="tabpanel"
                    aria-labelledby="videoEditing-tab">
                    <table class="table table-bordered mt-3 mb-5">
                        <thead>
                            <tr>
                                <th>Video Title</th>
                                <th>Favorites Count</th>
                                <th>Lasted Date</th>
                                <th>Oldest Date</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Avengers</td>
                                <td>1,234,567,890</td>
                                <td>2023-03-23</td>
                                <td>2010-05-04</td>
                            </tr>
                            <tr>
                                <td>Avengers: Age of Ultron</td>
                                <td>987,654,321</td>
                                <td>2023-03-24</td>
                                <td>2015-04-13</td>
                            </tr>
                            <tr>
                                <td>Inception</td>
                                <td>876,543,210</td>
                                <td>2023-03-25</td>
                                <td>2010-07-16</td>
                            </tr>
                            <tr>
                                <td>The Dark Knight</td>
                                <td>765,432,109</td>
                                <td>2023-03-26</td>
                                <td>2008-07-18</td>
                            </tr>
                            <tr>
                                <td>The Lord of the Rings</td>
                                <td>654,321,098</td>
                                <td>2023-03-27</td>
                                <td>2001-12-19</td>
                            </tr>
                            <tr>
                                <td>Avatar</td>
                                <td>543,210,987</td>
                                <td>2023-03-28</td>
                                <td>2009-12-18</td>
                            </tr>
                            <tr>
                                <td>Jurassic Park</td>
                                <td>432,109,876</td>
                                <td>2023-03-29</td>
                                <td>1993-06-11</td>
                            </tr>
                            <tr>
                                <td>Harry Potter</td>
                                <td>321,098,765</td>
                                <td>2023-03-30</td>
                                <td>2001-11-16</td>
                            </tr>
                            <tr>
                                <td>Forrest Gump</td>
                                <td>210,987,654</td>
                                <td>2023-03-31</td>
                                <td>1994-07-06</td>
                            </tr>
                            <tr>
                                <td>Interstellar</td>
                                <td>109,876,543</td>
                                <td>2023-04-01</td>
                                <td>2014-11-07</td>
                            </tr>
                        </tbody>
                    </table>
                    
                </div>
                <div class="tab-pane fade mb-5" id="videoList" role="tabpanel" aria-labelledby="videoList-tab">
                    <form action="" method="post">
                        <div class="row mt-3">
                            <div class="col">
                                <div class="form-inline col-6">
                                    <label for="">Report</label>
                                    <div class="input-group mb-3">
                                        <input class="form-control" list="videos" name="video" id="video">
                                        <datalist id="videos">
                                            <option value="The avengers">
                                            <option value="Harry Poster">
                                            <option value="King of rings">
                                        </datalist>

                                        <button class="btn btn-success" type="submit">Report</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col mt-3">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Username</th>
                                            <th>Fullname</th>
                                            <th>Email</th>
                                            <th>Favorite Date</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>user11</td>
                                            <td>Nguyễn Thị L</td>
                                            <td>nguyenthil@gmail.com</td>
                                            <td>2023-03-23</td>
                                        </tr>
                                        <tr>
                                            <td>user12</td>
                                            <td>Trần Văn M</td>
                                            <td>tranvanm@gmail.com</td>
                                            <td>2023-03-24</td>
                                        </tr>
                                        <tr>
                                            <td>user13</td>
                                            <td>Hoàng Thị N</td>
                                            <td>hoangthin@gmail.com</td>
                                            <td>2023-03-25</td>
                                        </tr>
                                        <tr>
                                            <td>user14</td>
                                            <td>Lê Văn O</td>
                                            <td>levano@gmail.com</td>
                                            <td>2023-03-26</td>
                                        </tr>
                                        <tr>
                                            <td>user15</td>
                                            <td>Phạm Thị P</td>
                                            <td>phamthip@gmail.com</td>
                                            <td>2023-03-27</td>
                                        </tr>
                                        <tr>
                                            <td>user16</td>
                                            <td>Ngô Văn Q</td>
                                            <td>ngovanq@gmail.com</td>
                                            <td>2023-03-28</td>
                                        </tr>
                                        <tr>
                                            <td>user17</td>
                                            <td>Đặng Thị R</td>
                                            <td>dangthir@gmail.com</td>
                                            <td>2023-03-29</td>
                                        </tr>
                                        <tr>
                                            <td>user18</td>
                                            <td>Phan Văn S</td>
                                            <td>phanvans@gmail.com</td>
                                            <td>2023-03-30</td>
                                        </tr>
                                        <tr>
                                            <td>user19</td>
                                            <td>Đỗ Thị T</td>
                                            <td>dothit@gmail.com</td>
                                            <td>2023-03-31</td>
                                        </tr>
                                        <tr>
                                            <td>user20</td>
                                            <td>Lý Văn U</td>
                                            <td>lyvanu@gmail.com</td>
                                            <td>2023-04-01</td>
                                        </tr>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </form>
                </div>
                <div class="tab-pane fade mb-5" id="shareFriends" role="tabpanel" aria-labelledby="shareFriends-tab">

                    <form action="" method="post">
                        <div class="row mt-3">
                            <div class="col">
                                <div class="form-inline col-6">
                                    <label for="">Report</label>
                                    <div class="input-group mb-3">
                                        <input class="form-control" list="videos" name="video" id="video">
                                        <datalist id="videos">
                                            <option value="The avengers">
                                            <option value="Harry Poster">
                                            <option value="King of rings">
                                        </datalist>

                                        <button class="btn btn-success" type="submit">Report</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col mt-3">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Sender Name</th>
                                            <th>Sender Email</th>
                                            <th>Receiver Email</th>
                                            <th>Sent Date</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>John Doe</td>
                                            <td>john.doe@example.com</td>
                                            <td>jane.doe@example.com</td>
                                            <td>2023-03-23</td>
                                        </tr>
                                        <tr>
                                            <td>Jane Smith</td>
                                            <td>jane.smith@example.com</td>
                                            <td>john.smith@example.com</td>
                                            <td>2023-03-24</td>
                                        </tr>
                                        <tr>
                                            <td>Alice Johnson</td>
                                            <td>alice.johnson@example.com</td>
                                            <td>bob.johnson@example.com</td>
                                            <td>2023-03-25</td>
                                        </tr>
                                        <tr>
                                            <td>Bob Brown</td>
                                            <td>bob.brown@example.com</td>
                                            <td>alice.brown@example.com</td>
                                            <td>2023-03-26</td>
                                        </tr>
                                        <tr>
                                            <td>Michael Williams</td>
                                            <td>michael.williams@example.com</td>
                                            <td>sarah.williams@example.com</td>
                                            <td>2023-03-27</td>
                                        </tr>
                                        <tr>
                                            <td>Sarah Garcia</td>
                                            <td>sarah.garcia@example.com</td>
                                            <td>michael.garcia@example.com</td>
                                            <td>2023-03-28</td>
                                        </tr>
                                        <tr>
                                            <td>David Rodriguez</td>
                                            <td>david.rodriguez@example.com</td>
                                            <td>emily.rodriguez@example.com</td>
                                            <td>2023-03-29</td>
                                        </tr>
                                        <tr>
                                            <td>Emily Martinez</td>
                                            <td>emily.martinez@example.com</td>
                                            <td>david.martinez@example.com</td>
                                            <td>2023-03-30</td>
                                        </tr>
                                        <tr>
                                            <td>William Hernandez</td>
                                            <td>william.hernandez@example.com</td>
                                            <td>olivia.hernandez@example.com</td>
                                            <td>2023-03-31</td>
                                        </tr>
                                        <tr>
                                            <td>Olivia Lopez</td>
                                            <td>olivia.lopez@example.com</td>
                                            <td>william.lopez@example.com</td>
                                            <td>2023-04-01</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </main>
  