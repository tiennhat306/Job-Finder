<%@ page import="DTO.CandidateSessionItem" %>
<%@ page import="model.bean.City" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.bean.Career" %>
<%@ page import="DTO.JobBoardItem" %>
<%@ page import="DTO.TopEmployerItem" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<%--<!doctype html>--%>
<%--<html class="no-js" lang="zxx">--%>

<%--<head>--%>
<%--  <meta charset="utf-8">--%>
<%--  <meta http-equiv="x-ua-compatible" content="ie=edge">--%>
<%--  <title>Tìm kiếm việc làm nhanh chóng cùng JobFinder </title>--%>
<%--  <meta name="description" content="">--%>
<%--  <meta name="viewport" content="width=device-width, initial-scale=1">--%>

<%--  <!-- <link rel="manifest" href="site.webmanifest"> -->--%>
<%--  <link rel="shortcut icon" type="image/x-icon" href="candidate/img/logo_title.png">--%>
<%--  <!-- Place favicon.ico in the root directory -->--%>

<%--  <!-- CSS here -->--%>
<%--  <link rel="stylesheet" href="candidate/css/bootstrap.min.css">--%>
<%--  <link rel="stylesheet" href="candidate/css/owl.carousel.min.css">--%>
<%--  <link rel="stylesheet" href="candidate/css/magnific-popup.css">--%>
<%--  <link rel="stylesheet" href="candidate/css/font-awesome.min.css">--%>
<%--  <link rel="stylesheet" href="candidate/css/themify-icons.css">--%>
<%--  <link rel="stylesheet" href="candidate/css/nice-select.css">--%>
<%--  <link rel="stylesheet" href="candidate/css/flaticon.css">--%>
<%--  <link rel="stylesheet" href="candidate/css/gijgo.css">--%>
<%--  <link rel="stylesheet" href="candidate/css/animate.min.css">--%>
<%--  <link rel="stylesheet" href="candidate/css/slicknav.css">--%>
<%--  <link rel="stylesheet" href="candidate/css/style.css">--%>
<%--  <!-- <link rel="stylesheet" href="css/responsive.css"> -->--%>
<%--</head>--%>

<%--<body>--%>
<%--<!-- footer start -->--%>

<%--<!--/ footer end  -->--%>

<%--<!-- link that opens popup -->--%>
<%--<!-- JS here -->--%>
<%--<script src="candidate/js/vendor/modernizr-3.5.0.min.js"></script>--%>
<%--<script src="candidate/js/vendor/jquery-1.12.4.min.js"></script>--%>
<%--<script src="candidate/js/popper.min.js"></script>--%>
<%--<script src="candidate/js/bootstrap.min.js"></script>--%>
<%--<script src="candidate/js/owl.carousel.min.js"></script>--%>
<%--<script src="candidate/js/isotope.pkgd.min.js"></script>--%>
<%--<script src="candidate/js/ajax-form.js"></script>--%>
<%--<script src="candidate/js/waypoints.min.js"></script>--%>
<%--<script src="candidate/js/jquery.counterup.min.js"></script>--%>
<%--<script src="candidate/js/imagesloaded.pkgd.min.js"></script>--%>
<%--<script src="candidate/js/scrollIt.js"></script>--%>
<%--<script src="candidate/js/jquery.scrollUp.min.js"></script>--%>
<%--<script src="candidate/js/wow.min.js"></script>--%>
<%--<script src="candidate/js/nice-select.min.js"></script>--%>
<%--<script src="candidate/js/jquery.slicknav.min.js"></script>--%>
<%--<script src="candidate/js/jquery.magnific-popup.min.js"></script>--%>
<%--<script src="candidate/js/plugins.js"></script>--%>
<%--<script src="candidate/js/gijgo.min.js"></script>--%>


<%--<!--contact js-->--%>
<%--<script src="candidate/js/contact.js"></script>--%>
<%--<script src="candidate/js/jquery.ajaxchimp.min.js"></script>--%>
<%--<script src="candidate/js/jquery.form.js"></script>--%>
<%--<script src="candidate/js/jquery.validate.min.js"></script>--%>
<%--<script src="candidate/js/mail-script.js"></script>--%>

<%--<script src="candidate/js/main.js"></script>--%>
<%--</body>--%>

<%--</html>--%>