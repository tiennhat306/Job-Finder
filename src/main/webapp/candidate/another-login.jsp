<%@ page import="DTO.CandidateSessionItem" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
   <meta charset="utf-8">
   <meta http-equiv="x-ua-compatible" content="ie=edge">
   <title>Quản trị viên/Nhà tuyển dụng</title>
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

   <!-- <link rel="stylesheet" href="candidate/css/responsive.css"> -->
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

  <!-- bradcam_area  -->
  <div class="bradcam_area bradcam_bg_1">
      <div class="container">
          <div class="row">
              <div class="col-xl-12">
                  <div class="bradcam_text">
                      <h3>Quản trị viên/Nhà tuyển dụng</h3>
                  </div>
              </div>
          </div>
      </div>
  </div>
  <!--/ bradcam_area  -->

   <!--================Blog Area =================-->
   <section class="blog_area single-post-area section-padding">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 posts-list">
               <div class="single-post">
                  <div class="feature-img">
                     <img class="img-fluid" src="candidate/img/service/about.png" alt="">
                  </div>
                  <div class="blog_details">
                     <h2>Đăng tin tuyển dụng,
                        tìm kiếm ứng viên hiệu quả
                     </h2>
                     <p class="excert">
                        <b>Đăng tin tuyển dụng</b>
                        Đăng việc làm của bạn lên trang web của chúng tôi để thu hút ứng viên tiềm năng
                     </p>
                     <p>
                        <b>Tìm kiếm hồ sơ ứng viên</b>
                        Truy cập kho ứng viên chất lượng của CareerLink để tìm đúng nhân tài cho công ty bạn
                     </p>
                     <div class="quote-wrapper">
                        <div class="quotes">
                           <b>Tại sao chọn CareerLink.vn?</b>
                           Là nhà cung cấp hàng đầu các dịch vụ tuyển dụng trực tuyến tại Việt Nam, CareerLink.vn có hơn 100,000 người tìm việc mỗi ngày. Đăng công việc trên CareerLink.vn là cách hiệu quả nhất để nhận hồ sơ phù hợp từ người tìm việc.
                        </div>
                     </div>
                     <p>
                        <b>Dịch vụ Nhân sự cao cấp</b>
                        Executive Search - Giải pháp tối ưu cho nhân sự chủ chốt, nhân sự cấp cao và các vị trí đòi hỏi chuyên môn cao
                     </p>
                  </div>
               </div>
               <div class="navigation-top">
                  <div class="d-sm-flex justify-content-between text-center">
                     <p class="like-info"><span class="align-middle"><i class="fa fa-heart"></i></span></p>
                     <div class="col-sm-4 text-center my-2 my-sm-0">
                        <!-- <p class="comment-count"><span class="align-middle"><i class="fa fa-comment"></i></span> 06 Comments</p> -->
                     </div>
                     <ul class="social-icons">
                        <li><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                        <li><a href="#"><i class="fa fa-behance"></i></a></li>
                     </ul>
                  </div>

               </div>
            </div>
            <div class="col-lg-4">
               <div class="blog_right_sidebar">
                  <aside class="single_sidebar_widget search_widget">
                     <form id="login-form" method="post">
                         <div class="form-group">
                             <div class="input-group mb-3">
<%--                                     <label for="username">Tài khoản</label>--%>
                                 <input class="form-control" type="email" id="username" name="username" required="" placeholder="Nhập email của bạn">
                             </div>
                             <div class="input-group mb-3">
<%--                                     <label for="password">Mật khẩu</label>--%>
                                 <input class="form-control" type="password" required="" id="password" name="password" placeholder="Nhập mật khẩu của bạn">
                             </div>
                         </div>
                         <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn mb-3"
                                 type="submit" onclick="submitForm('EmployerLoginServlet')">Người tuyển dụng</button>
                         <button class="button rounded-0 btn-bordred-blue text-white w-100 btn_1 boxed-btn3"
                                 type="submit" onclick="submitForm('AdminLoginServlet')">Quản trị viên</button>
                     </form>
                  </aside>
                  <aside class="single_sidebar_widget post_category_widget">
                     <h4 class="widget_title">Ngành nghề phổ biến</h4>
                     <ul class="list cat-list">
                        <li>
                           <a href="#" class="d-flex">
                              <p>Công nghệ thông tin</p>
                              <p>(37)</p>
                           </a>
                        </li>
                        <li>
                           <a href="#" class="d-flex">
                              <p>Kế toán/Kiểm toán</p>
                              <p>(10)</p>
                           </a>
                        </li>
                        <li>
                           <a href="#" class="d-flex">
                              <p>Ngân hàng/Chứng khoán</p>
                              <p>(03)</p>
                           </a>
                        </li>
                        <li>
                           <a href="#" class="d-flex">
                              <p>Thư ký/Hành chính</p>
                              <p>(11)</p>
                           </a>
                        </li>
                        <li>
                           <a href="#" class="d-flex">
                              <p>Giáo dục/Đào tạo</p>
                              <p>(21)</p>
                           </a>
                        </li>
                        <li>
                           <a href="#" class="d-flex">
                              <p>Chăm sóc y tế</p>
                              <p>(21)</p>
                           </a>
                        </li>
                     </ul>
                  </aside>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!--================ Blog Area end =================-->

    <!-- footer start -->
    <footer class="footer">
      <div class="footer_top">
          <div class="container">
              <div class="row">
                  <div class="col-xl-3 col-md-6 col-lg-3">
                      <div class="footer_widget wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s">
                          <div class="footer_logo">
                              <a href="#">
                                  <img src="candidate/img/logo.png" alt="" style="max-height: 80px">
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

    <script>
        function submitForm(action) {
            document.getElementById('login-form').action = action;

            document.getElementById('login-form').submit();
        }
    </script>
</body>

</html>