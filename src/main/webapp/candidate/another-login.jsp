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
    <jsp:include page="layout/topbar.jsp"></jsp:include>
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
                           <b>Tại sao chọn Job Finder?</b>
                           Là nhà cung cấp hàng đầu các dịch vụ tuyển dụng trực tuyến tại Việt Nam, Job Finder có hơn 100,000 người tìm việc mỗi ngày. Đăng công việc trên CareerLink.vn là cách hiệu quả nhất để nhận hồ sơ phù hợp từ người tìm việc.
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
                            <div class="input-group mb-3 ">
                                <a href="EmployerRegisterServlet">
                                    Chưa có tài khoản tuyển dụng, đăng ký?
                                </a>
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
    <jsp:include page="layout/footer.jsp"></jsp:include>
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