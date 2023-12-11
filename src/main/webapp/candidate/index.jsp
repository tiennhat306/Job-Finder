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
    <jsp:include page="layout/topbar.jsp"></jsp:include>
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
                        <a href="#" class="boxed-btn4">Xem tất cả</a>
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
                        <h3>Lời khuyên</h3>
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
                                            <p>"Người làm việc chăm chỉ sẽ đánh bại người tài năng khi người tài năng không làm việc chăm chỉ.</p>
                                            <span>- Doanh nhân A</span>
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
                                            <img src="candidate/img/candiateds/7.png" alt=""  style="width: 228px; height: 228px;">
                                            <div class="quote_icon">
                                                <i class=" Flaticon flaticon-quote"></i>
                                            </div>
                                        </div>
                                        <div class="info">
                                            <p>"Khi gặp khó khăn thất bại trong công việc đừng bao giờ nghĩ đến từ “Chấp nhận” mà là phải “Vượt qua”</p>
                                            <span>- Nữ Doanh nhân B</span>
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
                                            <img src="candidate/img/candiateds/10.png" alt="" style="width: 228px; height: 228px;">
                                            <div class="quote_icon">
                                                <i class="Flaticon flaticon-quote"></i>
                                            </div>
                                        </div>
                                        <div class="info">
                                            <p>"Hãy làm những việc bình thường bằng lòng say mê phi thường thành công sẽ đến với bạn.</p>
                                            <span>- Nhà khởi nghiệp trẻ C</span>
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
    <jsp:include page="layout/footer.jsp"></jsp:include>
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