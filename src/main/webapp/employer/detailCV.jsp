<%@ page import="DTO.CVDetailItem" %>
<%@ page import="enums.CVStatus" %>
<%@ page import="DTO.EmployerSessionItem" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết thư xin việc</title>
    <link rel="shortcut icon" href="employer/assets/images/logo-title.png" />
    <link rel="stylesheet" href="employer/assets/css/bootstrap2.css">
    <link rel="stylesheet" href="employer/assets/css/detailcv.css">
    <link href="employer/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="employer/assets/css/toastr.min.css">
    <link href="employer/assets/css/app.min.css" rel="stylesheet" type="text/css" />
    <%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <style>

    </style>
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
        EmployerSessionItem employer = (EmployerSessionItem) session.getAttribute("employerSession");
        if(employer == null){
            response.sendRedirect("/error.jsp");
            return;
        }
    %>
    <div class="content-page">
        <div class="content">
            <%
                CVDetailItem detail = (CVDetailItem) request.getAttribute("detailCV");
            %>
            <section class="dashboard">
                <h2 class="text-center mb-2">Chi tiết thư xin việc</h2>
                <div class="form_infomation">
                    <form action="DetailCVServlet" method="post">
                        <div class="col-md-12">
                            <label for="nameJob">Tên công việc</label>
                            <input type="text" name="nameJob" id="nameJob" value="<%= detail.getTitle() %>" readonly>
                        </div>
                        <div class="col-md-12">
                            <label for="nameCandidate">Tên ứng viên</label>
                            <input type="text" name="nameCandidate" id="nameCandidate" value="<%= detail.getNameCan() %>" readonly>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label for="phone">Số điện thoại</label>
                                <input type="text" name="phone" id="phone" value="<%= detail.getPhone() %>" readonly>
                            </div>
                            <div class="col-md-6">
                                <label for="email">Email</label>
                                <input type="text" name="email" id="email" value="<%= detail.getEmail() %>" readonly>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label for="cvfile"  style="margin-bottom: 11px">Hồ sơ</label>
                                <div class="download-btn" id="cvfile" style="height: 6vh">
                                    <a href="<%= detail.getCvfile() %>" class="download-link" download>
                                        <span class="download">
                                          <i class="fa-solid fa-download"></i>
                                        </span>
                                        <%
                                            String filePath = detail.getCvfile();
                                            String fileName = filePath.substring(filePath.lastIndexOf("/") + 1);
                                        %>
                                        <%= fileName %>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label for="status-cv">Trạng thái</label>
                                <select name="status-cv" id="status-cv" required>
                                        <%
                            for (CVStatus status : CVStatus.values()) {
                                String selected = (detail.getStatus() == status.getValue()) ? "selected" : "";
                        %>
                                    <option value="<%= status.getValue() %>" <%= selected %>><%= status.toString() %></option>
                                        <% } %>
                            </div>
                        </div>
                        <input type="text" name="cvid" value="<%= detail.getCvid() %>" hidden>
                        <div class="col-md-12">
                            <input type="submit" value="Cập nhật">
                        </div>
                    </form>
                </div>
            </section>
        </div>
    </div>
</div>
</body>
</html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="employer/assets/js/vendor.min.js"></script>
<script src="employer/assets/js/app.min.js"></script>
<script src="employer/assets/libs/toastr/toastr.min.js"></script>
<script src="employer/assets/js/pages/toastr.init.js"></script>

