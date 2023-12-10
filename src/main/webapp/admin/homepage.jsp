<%@ page import="DTO.EmployerSessionItem" %>
<%@ page import="DTO.AdminSessionItem" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>
    Quản lý đăng tuyển
  </title>
  <link rel="shortcut icon" href="employer/assets/images/logo-title.png" />
  <link href="employer/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
  <link href="employer/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
  <link href="employer/assets/css/app.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="wrapper">
  <!-- Topbar Start -->
  <jsp:include page="layout/topbar.jsp"></jsp:include>
  <!-- end Topbar -->

  <!-- ========== Left Sidebar Start ========== -->
  <jsp:include page="layout/sidebar.jsp"></jsp:include>
  <!-- Left Sidebar End -->
  <%
    AdminSessionItem adminSessionItem = (AdminSessionItem) session.getAttribute("adminSession");
    if(adminSessionItem == null){
      response.sendRedirect("/error.jsp");
      return;
    }
  %>

  <!-- ============================================================== -->
  <!-- Start Page Content here -->
  <!-- ============================================================== -->

  <div class="content-page">
    <!-- content start -->
    <div class="content">
      <!-- Start Content-->
      <div class="container-fluid">
        <!-- content goes here -->
        123456
      </div>
      <!-- container-fluid -->
    </div>

    <!-- Footer Start -->
    <jsp:include page="layout/footer.jsp"></jsp:include>
    <!-- end Footer -->
  </div>

  <!-- ============================================================== -->
  <!-- End Page content -->
  <!-- ============================================================== -->
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="employer/assets/js/vendor.min.js"></script>
<script src="employer/assets/js/app.min.js"></script>
</body>
</html>

