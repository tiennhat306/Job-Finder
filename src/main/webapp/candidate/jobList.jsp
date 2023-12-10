<%@ page import="DTO.JobListInfoItem" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Job Board</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="candidate/img/favicon.png">
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
                        <div class="col-xl-3 col-lg-2">
                            <div class="logo">
                                <a href="index.html">
                                    <img src="candidate/img/logo.png" alt="" style="max-height: 80px">
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-7">
                            <div class="main-menu  d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">
                                        <li><a href="CandidateHomepageServlet">Trang chủ</a></li>
                                        <li><a href="jobs.html">Tìm việc làm</a></li>
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
                        <div class="col-xl-3 col-lg-3 d-none d-lg-block">
                            <div class="Appointment">
                                <div class="phone_num d-none d-xl-block">
                                    <a href="#">Log in</a>
                                </div>
                                <div class="d-none d-lg-block">
                                    <a class="boxed-btn3" href="#">Post a Job</a>
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
                        <h3>Filter</h3>
                        <form action="#">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="single_field">
                                        <input type="text" placeholder="Search keyword">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="single_field">
                                        <select class="wide">
                                            <option data-display="Location">Location</option>
                                            <option value="1">Rangpur</option>
                                            <option value="2">Dhaka </option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="single_field">
                                        <select class="wide">
                                            <option data-display="Category">Category</option>
                                            <option value="1">Category 1</option>
                                            <option value="2">Category 2 </option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="single_field">
                                        <select class="wide">
                                            <option data-display="Experience">Experience</option>
                                            <option value="1">Experience 1</option>
                                            <option value="2">Experience 2 </option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="single_field">
                                        <select class="wide">
                                            <option data-display="Job type">Job type</option>
                                            <option value="1">full time 1</option>
                                            <option value="2">part time 2 </option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="single_field">
                                        <select class="wide">
                                            <option data-display="Qualification">Qualification</option>
                                            <option value="1">Qualification 1</option>
                                            <option value="2">Qualification 2</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="single_field">
                                        <select class="wide">
                                            <option data-display="Gender">Gender</option>
                                            <option value="1">male</option>
                                            <option value="2">female</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="range_wrap">
                        <label for="amount">Price range:</label>
                        <div id="slider-range"></div>
                        <p>
                            <input type="text" id="amount" readonly style="border:0; color:#7A838B; font-size: 14px; font-weight:400;">
                        </p>
                    </div>
                    <div class="reset_btn">
                        <button  class="boxed-btn3 w-100" type="submit">Reset</button>
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
                            <div class="col-md-6">
                                <div class="serch_cat d-flex justify-content-end">
                                    <select>
                                        <option data-display="Most Recent">Most Recent</option>
                                        <option value="1">Marketer</option>
                                        <option value="2">Wordpress </option>
                                        <option value="4">Designer</option>
                                    </select>
                                </div>
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
                                        <a class="heart_mark" href="#"> <i class="fa fa-heart"></i> </a>
                                        <a href="job_details.html" class="boxed-btn3">Đăng ký ngay</a>
                                    </div>
                                    <div class="date">
                                        <p>Ngày hết hạn: <%= list.get(i).getExp_date() %></p>
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
                                        <li><a href="jobListServlet?index=<%= i %>"><span><%= i %></span></a></li>
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
<%--<footer class="footer">--%>
<%--    <div class="footer_top">--%>
<%--        <div class="container">--%>
<%--            <div class="row">--%>
<%--                <div class="col-xl-3 col-md-6 col-lg-3">--%>
<%--                    <div class="footer_widget wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s">--%>
<%--                        <div class="footer_logo">--%>
<%--                            <a href="#">--%>
<%--                                <img src="candidate/img/logo.png" alt="">--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                        <p>--%>
<%--                            finloan@support.com <br>--%>
<%--                            +10 873 672 6782 <br>--%>
<%--                            600/D, Green road, NewYork--%>
<%--                        </p>--%>
<%--                        <div class="socail_links">--%>
<%--                            <ul>--%>
<%--                                <li>--%>
<%--                                    <a href="#">--%>
<%--                                        <i class="ti-facebook"></i>--%>
<%--                                    </a>--%>
<%--                                </li>--%>
<%--                                <li>--%>
<%--                                    <a href="#">--%>
<%--                                        <i class="fa fa-google-plus"></i>--%>
<%--                                    </a>--%>
<%--                                </li>--%>
<%--                                <li>--%>
<%--                                    <a href="#">--%>
<%--                                        <i class="fa fa-twitter"></i>--%>
<%--                                    </a>--%>
<%--                                </li>--%>
<%--                                <li>--%>
<%--                                    <a href="#">--%>
<%--                                        <i class="fa fa-instagram"></i>--%>
<%--                                    </a>--%>
<%--                                </li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>

<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-xl-2 col-md-6 col-lg-2">--%>
<%--                    <div class="footer_widget wow fadeInUp" data-wow-duration="1.1s" data-wow-delay=".4s">--%>
<%--                        <h3 class="footer_title">--%>
<%--                            Company--%>
<%--                        </h3>--%>
<%--                        <ul>--%>
<%--                            <li><a href="#">About </a></li>--%>
<%--                            <li><a href="#"> Pricing</a></li>--%>
<%--                            <li><a href="#">Carrier Tips</a></li>--%>
<%--                            <li><a href="#">FAQ</a></li>--%>
<%--                        </ul>--%>

<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-xl-3 col-md-6 col-lg-3">--%>
<%--                    <div class="footer_widget wow fadeInUp" data-wow-duration="1.2s" data-wow-delay=".5s">--%>
<%--                        <h3 class="footer_title">--%>
<%--                            Category--%>
<%--                        </h3>--%>
<%--                        <ul>--%>
<%--                            <li><a href="#">Design & Art</a></li>--%>
<%--                            <li><a href="#">Engineering</a></li>--%>
<%--                            <li><a href="#">Sales & Marketing</a></li>--%>
<%--                            <li><a href="#">Finance</a></li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-xl-4 col-md-6 col-lg-4">--%>
<%--                    <div class="footer_widget wow fadeInUp" data-wow-duration="1.3s" data-wow-delay=".6s">--%>
<%--                        <h3 class="footer_title">--%>
<%--                            Subscribe--%>
<%--                        </h3>--%>
<%--                        <form action="#" class="newsletter_form">--%>
<%--                            <input type="text" placeholder="Enter your mail">--%>
<%--                            <button type="submit">Subscribe</button>--%>
<%--                        </form>--%>
<%--                        <p class="newsletter_text">Esteem spirit temper too say adieus who direct esteem esteems--%>
<%--                            luckily.</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="copy-right_text wow fadeInUp" data-wow-duration="1.4s" data-wow-delay=".3s">--%>
<%--        <div class="container">--%>
<%--            <div class="footer_border"></div>--%>
<%--            <div class="row">--%>
<%--                <div class="col-xl-12">--%>
<%--                    <p class="copy_right text-center">--%>
<%--                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->--%>
<%--                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>--%>
<%--                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->--%>
<%--                    </p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</footer>--%>
<!--/ footer end  -->

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
    $( function() {
        $( "#slider-range" ).slider({
            range: true,
            min: 0,
            max: 24600,
            values: [ 750, 24600 ],
            slide: function( event, ui ) {
                $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] +"/ Year" );
            }
        });
        $( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) +
            " - $" + $( "#slider-range" ).slider( "values", 1 ) + "/ Year");
    } );
</script>
</body>

</html>