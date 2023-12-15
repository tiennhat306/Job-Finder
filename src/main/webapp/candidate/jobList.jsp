<%@ page import="DTO.JobListInfoItem" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="model.bean.City" %>
<%@ page import="model.bean.Career" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="DTO.CandidateSessionItem" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Danh sách việc làm</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="candidate/img/logo_title.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="candidate/css/bootstrap.min.css">
    <link rel="stylesheet" href="candidate/css/owl.carousel.min.css">
    <link rel="stylesheet" href="candidate/css/magnific-popup.css">
    <link rel="stylesheet" href="candidate/css/font-awesome.min.css">
    <link rel="stylesheet" href="candidate/css/themify-icons.css">
    <link rel="stylesheet" href="candidate/css/nice-select.css">
    <link rel="stylesheet" href="candidate/css/flaticon.css">
    <link rel="stylesheet" href="candidate/css/jquery-ui.css">
    <link rel="stylesheet" href="candidate/css/gijgo.css">
    <link rel="stylesheet" href="candidate/css/animate.min.css">
    <link rel="stylesheet" href="candidate/css/slicknav.css">

    <link rel="stylesheet" href="candidate/css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- header-start -->
<header>
    <div class="header-area ">
        <div id="sticky-header" class="main-header-area">
            <div class="container-fluid ">
                <div class="header_bottom_border">
                    <div class="row align-items-center">
                        <div class="col-xl-2 col-lg-2">
                            <div class="logo">
                                <a href="CandidateHomepageServlet">
                                    <img src="candidate/img/logo.png" alt="" style="max-height: 80px">
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-7">
                            <div class="main-menu  d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">
                                        <li><a href="CandidateHomepageServlet">Trang chủ</a></li>
                                        <li><a href="JobListServlet">Tìm việc làm</a></li>
                                        <li><a href="#">Hồ sơ & CV <i class="ti-angle-down"></i></a>
                                            <ul class="submenu">
                                                <li><a href="#">Quản lý CV </a></li>
                                                <li><a href="#">Mẫu CV </a></li>
                                                <li><a href="#">Hướng dẫn viết CV theo ngành nghề</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Công ty <i class="ti-angle-down"></i></a>
                                            <ul class="submenu">
                                                <li><a href="#">Danh sách công ty</a></li>
                                                <li><a href="#">Top nhà tuyển dụng</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Hỗ trợ</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 d-none d-lg-block">
                            <div class="Appointment">
                                <%
                                    CandidateSessionItem candidateSession = (CandidateSessionItem) session.getAttribute("candidateSession");
                                    if (candidateSession == null) {
                                %>
                                <div class="phone_num d-none d-xl-block">
                                    <a href="CandidateLoginServlet">Log in</a>
                                </div>

                                <div class="phone_num d-none d-xl-block ml-2">
                                    <a href="CandidateSignUpServlet">Sign up</a>
                                </div>
                                <%
                                } else {
                                %>
                                <div class="d-flex align-items-center">
                                    <div class="phone_num d-none d-xl-block">
                                        <a href="CandidateLogoutServlet">
                                            <i class="fe-log-out"></i>
                                            <span>Đăng xuất</span>
                                        </a>
                                    </div>
                                    <div class="thumb">
                                        <img src="<%=candidateSession.getAvatar()%>" alt=""
                                             width="40px" height="40px" class="rounded-circle">
                                    </div>
                                    <span
                                            style="font-weight: bold; font-size: 20px; margin-left: 5px; margin-right: 15px; color: white;"><%=candidateSession.getName()%></span>
                                </div>
                                <%
                                    }
                                %>
                                <div class="d-none d-lg-block">
                                    <a href="AnotherLoginServlet" class="boxed-btn3">Người
                                        dùng khác</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</header>
<%--<!-- header-end -->--%>

<%--<!-- bradcam_area  -->--%>
<div class="bradcam_area bradcam_bg_1">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="bradcam_text">
                    <%
                        int numJob = (int) request.getAttribute("numJob");
                    %>
                    <h3><%= numJob %> công việc có sẵn</h3>
                </div>
            </div>
        </div>
    </div>
</div>
<!--/ bradcam_area  -->

<!-- job_listing_area_start  -->
<div class="job_listing_area plus_padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="job_filter white-bg">
                    <div class="form_inner white-bg">
                        <h3>Tìm kiếm</h3>
                        <form action="JobListServlet">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="single_field">
                                        <input type="text" name="searchText" placeholder="Nhập từ khóa tìm kiếm">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="single_field">
                                        <select class="wide" name="location" id="status-location">
                                            <option value="0" data-display="Địa điểm">Địa điểm</option>
                                            <%
                                                ArrayList<City> cities = (ArrayList<City>) request.getAttribute("listCity");
                                                for (City city : cities) {
                                                String selected = "";
                                                int locationId = (int) request.getAttribute("location_id");
                                                if (city.getId() == locationId) {
                                                    selected = "selected";
                                                }
                                            %>
                                            <option value="<%=city.getId()%>" <%=selected%>><%=city.getName()%></option>
                                            <%}%>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="single_field">
                                        <select class="wide" name="career" id="status-career">
                                            <option value="" data-display="Ngành nghề">Ngành nghề</option>
                                            <%
                                                ArrayList<Career> careerList = (ArrayList<Career>) request.getAttribute("listCareer");
                                                for (Career career : careerList) {
                                                String selected = "";
                                                String careerId = request.getAttribute("career_id").toString();
                                                if (career.getId().equals(careerId)) {
                                                    selected = "selected";
                                                }
                                            %>
                                            <option value="<%=career.getId()%>" <%=selected%>><%=career.getName()%></option>
                                            <%}%>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="single_field">
                                        <select class="wide" name="job_type" id="status-jobtype">
                                            <option value="0" data-display="Loại công việc">Loại công việc</option>
                                            <%
                                                int jobTypeId = (int) request.getAttribute("jobtype_id");
                                            %>
                                            <option value="1" <%= (jobTypeId == 1) ? "selected" : "" %>>Bán thời gian</option>
                                            <option value="2" <%= (jobTypeId == 2) ? "selected" : "" %>>Toàn thời gian</option>
                                            <option value="3" <%= (jobTypeId == 3) ? "selected" : "" %>>Hợp đồng</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="reset_btn">
                                <button  class="boxed-btn3 w-100" type="submit">Tìm kiếm</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="recent_joblist_wrap">
                    <div class="recent_joblist white-bg ">
                        <div class="row align-items-center">
                            <div class="col-md-6">
                                <h4>Danh sách công việc</h4>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="job_lists m-0">
                    <div class="row">
                        <%
                            List<JobListInfoItem> list = (ArrayList<JobListInfoItem>) request.getAttribute("jobList");
                            for (int i = 0; i < list.size(); ++i) {
                        %>
                        <div class="col-lg-12 col-md-12">
                            <div class="single_jobs white-bg d-flex justify-content-between">
                                <div class="jobs_left d-flex align-items-center">
                                    <div class="thumb">
                                        <img src="<%= list.get(i).getLogo() %>" alt="">
                                    </div>
                                    <div class="jobs_conetent">
                                        <a href="job_details.html"><h4><%= list.get(i).getTitle() %></h4></a>
                                        <div class="links_locat d-flex align-items-center">
                                            <div class="location">
                                                <p> <i class="fa fa-map-marker"></i><%= list.get(i).getAddress() %></p>
                                            </div>
                                            <div class="location">
                                                <p> <i class="fa fa-clock-o"></i><%= list.get(i).getType() %></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="jobs_right">
                                    <div class="apply_now">
                                        <a href="job_details.html" class="boxed-btn3">Đăng ký ngay</a>
                                    </div>
                                    <%
                                        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
                                        String date = dateFormat.format(list.get(i).getExp_date());
                                    %>
                                    <div class="date">
                                        <p>Ngày hết hạn: <%= date %></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%
                            }
                        %>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="pagination_wrap">
                                <ul>
                                    <li><a href="#"> <i class="ti-angle-left"></i> </a></li>
                                    <%
                                        int cnt = (int) request.getAttribute("endPage");
                                        for (int i = 1; i <= cnt; ++i) {
                                    %>
                                        <li><a href="#" onclick="goToPage(<%= i %>)"><span><%= i %></span></a></li>
                                    <%
                                        }
                                    %>
                                    <li><a href="#"> <i class="ti-angle-right"></i> </a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- job_listing_area_end  -->

<!-- footer start -->
<jsp:include page="layout/footer.jsp"></jsp:include>

<!-- link that opens popup -->
<!-- JS here -->
<script src="candidate/js/vendor/modernizr-3.5.0.min.js"></script>
<script src="candidate/js/vendor/jquery-1.12.4.min.js"></script>
<script src="candidate/js/popper.min.js"></script>
<script src="candidate/js/bootstrap.min.js"></script>
<script src="candidate/js/owl.carousel.min.js"></script>
<script src="candidate/js/isotope.pkgd.min.js"></script>
<script src="candidate/js/ajax-form.js"></script>
<script src="candidate/js/waypoints.min.js"></script>
<script src="candidate/js/jquery.counterup.min.js"></script>
<script src="candidate/js/imagesloaded.pkgd.min.js"></script>
<script src="candidate/js/scrollIt.js"></script>
<script src="candidate/js/jquery.scrollUp.min.js"></script>
<script src="candidate/js/wow.min.js"></script>
<script src="candidate/js/nice-select.min.js"></script>
<script src="candidate/js/jquery.slicknav.min.js"></script>
<script src="candidate/js/jquery.magnific-popup.min.js"></script>
<script src="candidate/js/plugins.js"></script>
<!-- <script src="js/gijgo.min.js"></script> -->
<script src="candidate/js/range.js"></script>



<!--contact js-->
<script src="candidate/js/contact.js"></script>
<script src="candidate/js/jquery.ajaxchimp.min.js"></script>
<script src="candidate/js/jquery.form.js"></script>
<script src="candidate/js/jquery.validate.min.js"></script>
<script src="candidate/js/mail-script.js"></script>


<script src="candidate/js/main.js"></script>


<script>
    window.onload = function() {
        var urlParams = new URLSearchParams(window.location.search);
        var searchText = urlParams.get('searchText');
        if (searchText) {
            document.querySelector('input[name="searchText"]').value = searchText;
        }
    }
    function goToPage(index) {
        // Lấy URL hiện tại
        var currentUrl = window.location.href;

        // Tách các tham số truy vấn thành một mảng
        var urlParts = currentUrl.split('?');
        var baseUrl = urlParts[0];
        var queryParams = urlParts[1] ? urlParts[1].split('&') : [];

        // Tạo một mảng mới để lưu trữ các tham số truy vấn đã cập nhật
        var updatedParams = [];

        // Lặp qua các tham số truy vấn hiện tại
        for (var i = 0; i < queryParams.length; i++) {
            var param = queryParams[i];
            var paramName = param.split('=')[0];

            // Kiểm tra xem tham số truy vấn có phải là 'index' hay không
            if (paramName === 'index') {
                // Bỏ qua tham số truy vấn 'index' hiện tại
                continue;
            }

            // Thêm tham số truy vấn khác vào mảng đã cập nhật
            updatedParams.push(param);
        }

        // Thêm tham số truy vấn 'index' mới vào mảng đã cập nhật
        updatedParams.push('index=' + index);

        // Xây dựng URL mới bằng cách kết hợp baseUrl và các tham số truy vấn đã cập nhật
        var newUrl = baseUrl + '?' + updatedParams.join('&');

        // Chuyển hướng đến URL mới
        window.location.href = newUrl;
    }
</script>
</body>

</html>