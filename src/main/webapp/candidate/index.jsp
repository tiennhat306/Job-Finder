<%@ page import="DTO.CandidateSessionItem" %>
<%@ page import="model.bean.City" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.bean.Career" %>
<%@ page import="DTO.JobBoardItem" %>
<%@ page import="DTO.TopEmployerItem" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Tìm kiếm việc làm nhanh chóng cùng JobFinder </title>
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
    <link rel="stylesheet" href="candidate/css/gijgo.css">
    <link rel="stylesheet" href="candidate/css/animate.min.css">
    <link rel="stylesheet" href="candidate/css/slicknav.css">
    <link rel="stylesheet" href="candidate/css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>

<body>
    <!-- header-start -->
    <header>
        <div class="header-area ">
            <div id="sticky-header" class="main-header-area">
                <div class="container-fluid ">
                    <div class="header_bottom_border">
                        <div class="row align-items-center">
                            <div class="col-xl-3 col-lg-2">
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
                                    <%
                                        CandidateSessionItem candidateSession = (CandidateSessionItem) session.getAttribute("candidateSession");
                                        if (candidateSession == null) {
                                    %>
                                        <div class="phone_num d-none d-xl-block">
                                            <a href="CandidateLoginServlet">Log in</a>
                                        </div>
                                    <%} else {%>
                                        <div class="d-flex align-items-center">
                                            <span style="color: white">Welcome,</span>
                                            <div class="thumb" style="margin-left: 10px; margin-right: 5px">
                                                <img src="<%=candidateSession.getAvatar()%>" alt="" width="40px" height="40px">
                                            </div>
                                            <span style="font-weight: bold; font-size: 20px; margin-right: 15px; color: white"><%=candidateSession.getName()%></span>
                                        </div>
                                    <%
                                        }
                                    %>
                                    <div class="d-none d-lg-block">
                                        <a class="boxed-btn3" href="AnotherLoginServlet">Người dùng khác</a>
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
    <!-- header-end -->

    <!-- slider_area_start -->
    <div class="slider_area">
        <div class="single_slider  d-flex align-items-center slider_bg_1">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-7 col-md-6">
                        <div class="slider_text">
                            <h5 class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s">999+ Danh sách việc làm</h5>
                            <h3 class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".3s">Tìm kiếm công việc ước mơ của bạn</h3>
                            <p class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".4s">Chúng tôi cung cấp nền tảng tìm kiếm việc làm trực tuyến với sự chấp thuận nhanh chóng</p>
                            <div class="sldier_btn wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".5s">
                                <a href="#" class="boxed-btn3">Tìm kiếm việc làm</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="ilstration_img wow fadeInRight d-none d-lg-block text-right" data-wow-duration="1s" data-wow-delay=".2s">
            <img src="candidate/img/banner/illustration.png" alt="">
        </div>
    </div>
    <!-- slider_area_end -->

    <!-- catagory_area -->
    <div class="catagory_area">
        <div class="container">
            <div class="row cat_search">
                <div class="col-lg-3 col-md-4">
                    <div class="single_input">
                        <input type="text" placeholder="Nhập từ khóa tìm kiếm">
                    </div>
                </div>
                <div class="col-lg-3 col-md-4">
                    <div class="single_input">
                        <select class="wide" >
                            <option data-display="Tìm theo địa điểm">Địa điểm</option>
                            <%
                                ArrayList<City> cities = (ArrayList<City>) request.getAttribute("cityList");
                                for (City city : cities) {
                            %>
                                <option value="<%=city.getId()%>"><%=city.getName()%></option>
                            <%}%>
                          </select>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4">
                    <div class="single_input">
                        <select class="wide">
                            <option data-display="Tìm theo ngành nghề">Ngành nghề</option>
                            <%
                                ArrayList<Career> careerList = (ArrayList<Career>) request.getAttribute("careerList");
                                for (Career career : careerList) {
                            %>
                                <option value="<%=career.getId()%>"><%=career.getName()%></option>
                            <%}%>
                          </select>
                    </div>
                </div>
                <div class="col-lg-3 col-md-12">
                    <div class="job_btn">
                        <a href="#" class="boxed-btn3">Tìm kiếm</a>
                    </div>
                </div>
            </div>
<%--            <div class="row">--%>
<%--                <div class="col-lg-12">--%>
<%--                    <div class="popular_search d-flex align-items-center">--%>
<%--                        <span>Popular Search:</span>--%>
<%--                        <ul>--%>
<%--                            <li><a href="#">Design & Creative</a></li>--%>
<%--                            <li><a href="#">Marketing</a></li>--%>
<%--                            <li><a href="#">Administration</a></li>--%>
<%--                            <li><a href="#">Teaching & Education</a></li>--%>
<%--                            <li><a href="#">Engineering</a></li>--%>
<%--                            <li><a href="#">Software & Web</a></li>--%>
<%--                            <li><a href="#">Telemarketing</a></li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
        </div>
    </div>
    <!--/ catagory_area -->

    <!-- popular_catagory_area_start  -->
<%--    <div class="popular_catagory_area">--%>
<%--        <div class="container">--%>
<%--            <div class="row">--%>
<%--                <div class="col-lg-12">--%>
<%--                    <div class="section_title mb-40">--%>
<%--                        <h3>Popolar Categories</h3>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="row">--%>
<%--                <div class="col-lg-4 col-xl-3 col-md-6">--%>
<%--                    <div class="single_catagory">--%>
<%--                        <a href="jobs.html"><h4>Design & Creative</h4></a>--%>
<%--                        <p> <span>50</span> Available position</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-4 col-xl-3 col-md-6">--%>
<%--                    <div class="single_catagory">--%>
<%--                        <a href="jobs.html"><h4>Marketing</h4></a>--%>
<%--                        <p> <span>50</span> Available position</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-4 col-xl-3 col-md-6">--%>
<%--                    <div class="single_catagory">--%>
<%--                        <a href="jobs.html"><h4>Telemarketing</h4></a>--%>
<%--                        <p> <span>50</span> Available position</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-4 col-xl-3 col-md-6">--%>
<%--                    <div class="single_catagory">--%>
<%--                        <a href="jobs.html"><h4>Software & Web</h4></a>--%>
<%--                        <p> <span>50</span> Available position</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-4 col-xl-3 col-md-6">--%>
<%--                    <div class="single_catagory">--%>
<%--                        <a href="jobs.html"><h4>Administration</h4></a>--%>
<%--                        <p> <span>50</span> Available position</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-4 col-xl-3 col-md-6">--%>
<%--                    <div class="single_catagory">--%>
<%--                        <a href="jobs.html"><h4>Teaching & Education</h4></a>--%>
<%--                        <p> <span>50</span> Available position</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-4 col-xl-3 col-md-6">--%>
<%--                    <div class="single_catagory">--%>
<%--                        <a href="jobs.html"><h4>Engineering</h4></a>--%>
<%--                        <p> <span>50</span> Available position</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-4 col-xl-3 col-md-6">--%>
<%--                    <div class="single_catagory">--%>
<%--                        <a href="jobs.html"><h4>Garments / Textile</h4></a>--%>
<%--                        <p> <span>50</span> Available position</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
    <!-- popular_catagory_area_end  -->

    <!-- job_listing_area_start  -->
    <div class="job_listing_area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="section_title">
                        <h3>Các tin tuyển dụng gần đây</h3>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="brouse_job text-right">
                        <a href="jobs.html" class="boxed-btn4">Xem tất cả</a>
                    </div>
                </div>
            </div>
            <div class="job_lists">
                <div class="row">
                    <%
                        ArrayList<JobBoardItem> jobBoardList = (ArrayList<JobBoardItem>) request.getAttribute("jobBoardList");
                        for (JobBoardItem jobBoardItem : jobBoardList) {
                    %>
                        <div class="col-lg-12 col-md-12">
                            <div class="single_jobs white-bg d-flex justify-content-between">
                                <div class="jobs_left d-flex align-items-center">
                                    <div class="thumb">
                                        <img src="<%=jobBoardItem.getLogo()%>" alt="">
                                    </div>
                                    <div class="jobs_conetent">
                                        <a href="job_details.html"><h4><%=jobBoardItem.getTitle()%></h4></a>
                                        <a href="#"><h5><%=jobBoardItem.getCompanyName()%></h5></a>
                                        <div class="links_locat d-flex align-items-center">
                                            <div class="location">
                                                <p> <i class="fa fa-map-marker"></i> <%=jobBoardItem.getCityName()%></p>
                                            </div>
                                            <div class="location">
                                                <p> <i class="fa fa-money"></i> <%=jobBoardItem.getSalary()%></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="jobs_right">
                                    <div class="apply_now">
                                        <a class="heart_mark" href="#"> <i class="ti-heart"></i> </a>
                                        <a href="job_details.html" class="boxed-btn3">Ứng tuyển</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <%}%>
                </div>
            </div>
        </div>
    </div>
    <!-- job_listing_area_end  -->

    <!-- featured_candidates_area_start  -->
    <div class="featured_candidates_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section_title text-center mb-40">
                        <h3>Top nhà tuyển dụng hàng đầu</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="candidate_active owl-carousel">
<%--                        <div class="single_candidates text-center">--%>
<%--                            <div class="thumb">--%>
<%--                                <img src="candidate/img/candiateds/1.png" alt="">--%>
<%--                            </div>--%>
<%--                            <a href="#"><h4>Markary Jondon</h4></a>--%>
<%--                            <p>Software Engineer</p>--%>
<%--                        </div>--%>
                        <%
                            ArrayList<TopEmployerItem> topEmployerList = (ArrayList<TopEmployerItem>) request.getAttribute("topEmployerList");
                            for (TopEmployerItem topEmployerItem : topEmployerList) {
                        %>
                            <div class="single_candidates text-center">
                                <div class="single_company">
                                    <div class="thumb">
                                        <img src=<%=topEmployerItem.getLogo()%> alt="">
                                    </div>
                                    <a href="jobs.html"><h3><%=topEmployerItem.getCompanyName()%></h3></a>
                                    <p> <span><%=topEmployerItem.getNoOfJob()%></span> việc đang tuyển</p>
                                </div>
                            </div>
                        <%
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- job_searcing_wrap  -->
    <div class="job_searcing_wrap overlay">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 offset-lg-1 col-md-6">
                    <div class="searching_text">
                        <h3>Tìm kiếm 1 công việc?</h3>
                        <p>Chúng tôi cung cấp nền tảng tìm kiếm việc làm trực tuyến ngay lập tức với sự chấp thuận nhanh chóng </p>
                        <a href="#" class="boxed-btn3">Tìm việc</a>
                    </div>
                </div>
                <div class="col-lg-5 offset-lg-1 col-md-6">
                    <div class="searching_text">
                        <h3>Tìm kiếm chuyên gia?</h3>
                        <p>Chúng tôi cung cấp nền tảng tìm kiếm các ứng viên trên nhiều ngành nghề </p>
                        <a href="#" class="boxed-btn3">Đăng tuyển dụng</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- job_searcing_wrap end  -->

    <!-- testimonial_area  -->
    <div class="testimonial_area  ">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section_title text-center mb-40">
                        <h3>Testimonial</h3>
                    </div>
                </div>
                <div class="col-xl-12">
                    <div class="testmonial_active owl-carousel">
                        <div class="single_carousel">
                            <div class="row">
                                <div class="col-lg-11">
                                    <div class="single_testmonial d-flex align-items-center">
                                        <div class="thumb">
                                            <img src="candidate/img/testmonial/author.png" alt="">
                                            <div class="quote_icon">
                                                <i class="Flaticon flaticon-quote"></i>
                                            </div>
                                        </div>
                                        <div class="info">
                                            <p>"Working in conjunction with humanitarian aid agencies, we have supported programmes to help alleviate human suffering through animal welfare when people might depend on livestock as their only source of income or food.</p>
                                            <span>- Micky Mouse</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_carousel">
                            <div class="row">
                                <div class="col-lg-11">
                                    <div class="single_testmonial d-flex align-items-center">
                                        <div class="thumb">
                                            <img src="candidate/img/testmonial/author.png" alt="">
                                            <div class="quote_icon">
                                                <i class=" Flaticon flaticon-quote"></i>
                                            </div>
                                        </div>
                                        <div class="info">
                                            <p>"Working in conjunction with humanitarian aid agencies, we have supported programmes to help alleviate human suffering through animal welfare when people might depend on livestock as their only source of income or food.</p>
                                            <span>- Micky Mouse</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_carousel">
                            <div class="row">
                                <div class="col-lg-11">
                                    <div class="single_testmonial d-flex align-items-center">
                                        <div class="thumb">
                                            <img src="candidate/img/testmonial/author.png" alt="">
                                            <div class="quote_icon">
                                                <i class="Flaticon flaticon-quote"></i>
                                            </div>
                                        </div>
                                        <div class="info">
                                            <p>"Working in conjunction with humanitarian aid agencies, we have supported programmes to help alleviate human suffering through animal welfare when people might depend on livestock as their only source of income or food.</p>
                                            <span>- Micky Mouse</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /testimonial_area  -->


    <!-- footer start -->
    <footer class="footer">
        <div class="footer_top">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3 col-md-6 col-lg-3">
                        <div class="footer_widget wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s">
                            <div class="footer_logo">
                                <a href="#">
                                    <img src="candidate/img/logo.png" alt="">
                                </a>
                            </div>
                            <p>
                                finloan@support.com <br>
                                +10 873 672 6782 <br>
                                600/D, Green road, NewYork
                            </p>
                            <div class="socail_links">
                                <ul>
                                    <li>
                                        <a href="#">
                                            <i class="ti-facebook"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-google-plus"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-twitter"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-instagram"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </div>
                    <div class="col-xl-2 col-md-6 col-lg-2">
                        <div class="footer_widget wow fadeInUp" data-wow-duration="1.1s" data-wow-delay=".4s">
                            <h3 class="footer_title">
                                Company
                            </h3>
                            <ul>
                                <li><a href="#">About </a></li>
                                <li><a href="#"> Pricing</a></li>
                                <li><a href="#">Carrier Tips</a></li>
                                <li><a href="#">FAQ</a></li>
                            </ul>

                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 col-lg-3">
                        <div class="footer_widget wow fadeInUp" data-wow-duration="1.2s" data-wow-delay=".5s">
                            <h3 class="footer_title">
                                Category
                            </h3>
                            <ul>
                                <li><a href="#">Design & Art</a></li>
                                <li><a href="#">Engineering</a></li>
                                <li><a href="#">Sales & Marketing</a></li>
                                <li><a href="#">Finance</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-6 col-lg-4">
                        <div class="footer_widget wow fadeInUp" data-wow-duration="1.3s" data-wow-delay=".6s">
                            <h3 class="footer_title">
                                Subscribe
                            </h3>
                            <form action="#" class="newsletter_form">
                                <input type="text" placeholder="Enter your mail">
                                <button type="submit">Subscribe</button>
                            </form>
                            <p class="newsletter_text">Esteem spirit temper too say adieus who direct esteem esteems
                                luckily.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copy-right_text wow fadeInUp" data-wow-duration="1.4s" data-wow-delay=".3s">
            <div class="container">
                <div class="footer_border"></div>
                <div class="row">
                    <div class="col-xl-12">
                        <p class="copy_right text-center">
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
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
    <script src="candidate/js/gijgo.min.js"></script>


    <!--contact js-->
    <script src="candidate/js/contact.js"></script>
    <script src="candidate/js/jquery.ajaxchimp.min.js"></script>
    <script src="candidate/js/jquery.form.js"></script>
    <script src="candidate/js/jquery.validate.min.js"></script>
    <script src="candidate/js/mail-script.js"></script>

    <script src="candidate/js/main.js"></script>
</body>

</html>