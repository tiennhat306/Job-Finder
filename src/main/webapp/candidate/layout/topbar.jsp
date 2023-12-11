<%@ page import="DTO.CandidateSessionItem"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!-- header-start -->
<header>
	<div class="header-area ">
		<div id="sticky-header" class="main-header-area">
			<div class="container-fluid ">
				<div class="header_bottom_border">
					<div class="row align-items-center">
						<div class="col-xl-2 col-lg-2">
							<div class="logo">
								<a href="CandidateHomepageServlet"> <img
									src="candidate/img/logo.png" alt="" style="max-height: 80px">
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
											</ul></li>
										<li><a href="#">Công ty <i class="ti-angle-down"></i></a>
											<ul class="submenu">
												<li><a href="#">Danh sách công ty</a></li>
												<li><a href="#">Top nhà tuyển dụng</a></li>
											</ul></li>
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
<%--<!-- header-start -->--%>
<%--<header>--%>
<%--  <div class="header-area ">--%>
<%--    <div id="sticky-header" class="main-header-area">--%>
<%--      <div class="container-fluid ">--%>
<%--        <div class="header_bottom_border">--%>
<%--          <div class="row align-items-center">--%>
<%--            <div class="col-xl-3 col-lg-2">--%>
<%--              <div class="logo">--%>
<%--                <a href="CandidateHomepageServlet">--%>
<%--                  <img src="candidate/img/logo.png" alt="" style="max-height: 80px">--%>
<%--                </a>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--            <div class="col-xl-6 col-lg-7">--%>
<%--              <div class="main-menu  d-none d-lg-block">--%>
<%--                <nav>--%>
<%--                  <ul id="navigation">--%>
<%--                    <li><a href="CandidateHomepageServlet">Trang chủ</a></li>--%>
<%--                    <li><a href="jobs.html">Tìm việc làm</a></li>--%>
<%--                    <li><a href="#">Hồ sơ & CV <i class="ti-angle-down"></i></a>--%>
<%--                      <ul class="submenu">--%>
<%--                        <li><a href="#">Quản lý CV </a></li>--%>
<%--                        <li><a href="#">Mẫu CV </a></li>--%>
<%--                        <li><a href="#">Hướng dẫn viết CV theo ngành nghề</a></li>--%>
<%--                      </ul>--%>
<%--                    </li>--%>
<%--                    <li><a href="#">Công ty <i class="ti-angle-down"></i></a>--%>
<%--                      <ul class="submenu">--%>
<%--                        <li><a href="#">Danh sách công ty</a></li>--%>
<%--                        <li><a href="#">Top nhà tuyển dụng</a></li>--%>
<%--                      </ul>--%>
<%--                    </li>--%>
<%--                    <li><a href="#">Hỗ trợ</a></li>--%>
<%--                  </ul>--%>
<%--                </nav>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--            <div class="col-xl-3 col-lg-3 d-none d-lg-block">--%>
<%--              <div class="Appointment">--%>
<%--                <%--%>
<%--                  CandidateSessionItem candidateSession = (CandidateSessionItem) session.getAttribute("candidateSession");--%>
<%--                  if (candidateSession == null) {--%>
<%--                %>--%>
<%--                <div class="phone_num d-none d-xl-block">--%>
<%--                  <a href="CandidateLoginServlet">Log in</a>--%>
<%--                </div>--%>
<%--                <%} else {%>--%>
<%--                <div class="d-flex align-items-center">--%>
<%--                  <span style="color: white">Welcome,</span>--%>
<%--                  <div class="thumb" style="margin-left: 10px; margin-right: 5px">--%>
<%--                    <img src="<%=candidateSession.getAvatar()%>" alt="" width="40px" height="40px">--%>
<%--                  </div>--%>
<%--                  <span style="font-weight: bold; font-size: 20px; margin-right: 15px; color: white"><%=candidateSession.getName()%></span>--%>
<%--                </div>--%>
<%--                <%--%>
<%--                  }--%>
<%--                %>--%>
<%--                <div class="d-none d-lg-block">--%>
<%--                  <a class="boxed-btn3" href="AnotherLoginServlet">Người dùng khác</a>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--            <div class="col-12">--%>
<%--              <div class="mobile_menu d-block d-lg-none"></div>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>

<%--      </div>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</header>--%>
<%--<!-- header-end -->--%>


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