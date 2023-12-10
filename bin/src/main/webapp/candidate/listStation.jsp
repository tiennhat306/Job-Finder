<%--<%@ page import="model.bean.User" %>--%>
<%--<%@ page import="model.bean.Station" %>--%>
<%--<%@ page import="java.util.ArrayList" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="utf-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1">--%>
<%--    <title>Trang chủ - Quản trị viên</title>--%>

<%--    <!-- Google Font: Source Sans Pro -->--%>
<%--    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">--%>
<%--    <!-- Font Awesome Icons -->--%>
<%--    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">--%>
<%--    <!-- Theme style -->--%>
<%--    <link rel="stylesheet" href="dist/css/adminlte.min.css">--%>
<%--</head>--%>
<%--<body class="dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">--%>
<%--<div class="wrapper">--%>

<%--    <!-- Navbar -->--%>
<%--    <nav class="main-header navbar navbar-expand navbar-dark">--%>
<%--        <!-- Left navbar links -->--%>
<%--        <ul class="navbar-nav">--%>
<%--            <li class="nav-item">--%>
<%--                <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>--%>
<%--            </li>--%>
<%--            <li class="nav-item align-content-center align-items-center">--%>
<%--                <h3>Đây là tiêu đề</h3>--%>
<%--            </li>--%>
<%--        </ul>--%>
<%--    </nav>--%>
<%--    <!-- /.navbar -->--%>
<%--    <!-- Main Sidebar Container -->--%>
<%--    <jsp:include page="partials/sidebar.jsp"></jsp:include>--%>
<%--        <%--%>
<%--            User admin = new User();--%>
<%--            if (session.getAttribute("admin") == null) {--%>
<%--                response.sendRedirect("/error.jsp");--%>
<%--                return;--%>
<%--            }--%>
<%--            try {--%>
<%--                admin = (User)session.getAttribute("admin");--%>
<%--                if (admin.getAccountType() != 0) {--%>
<%--                    response.sendRedirect("/error.jsp");--%>
<%--                    return;--%>
<%--                }--%>
<%--            } catch (Exception e) {--%>
<%--                response.sendRedirect("/error.jsp");--%>
<%--                return;--%>
<%--            }--%>
<%--        %>--%>

<%--    <!-- Content Wrapper. Contains page content -->--%>
<%--    <div class="content-wrapper pt-3">--%>
<%--        <h1 class="text-center">Danh sách nhà ga</h1>--%>

<%--        <form action="ListStation" method="post">--%>
<%--            <div class="form-group">--%>
<%--                <label>Tìm kiếm</label>--%>
<%--                <input type="text" class="form-control" name="search" placeholder="Nhập tên nhà ga hoặc địa chỉ">--%>
<%--            </div>--%>
<%--            <input type="submit" class="btn btn-primary" value="Tìm kiếm">--%>
<%--        </form>--%>

<%--        <div class="table-responsive pt-3">--%>
<%--            <table class="table table-hover text-nowrap table-sm">--%>
<%--                <thead>--%>
<%--                <tr>--%>
<%--                    <th>Tên nhà ga</th>--%>
<%--                    <th>Km số</th>--%>
<%--                    <th>Địa chỉ</th>--%>
<%--                    <th>Là ga hành khách</th>--%>
<%--                </tr>--%>
<%--                </thead>--%>
<%--                <tbody>--%>
<%--                <%--%>
<%--                    ArrayList<Station> stations = (ArrayList<Station>)request.getAttribute("stations");--%>
<%--                    for (int i = 0; i < stations.size(); i++) {--%>
<%--                %>--%>
<%--                <tr>--%>
<%--                    <td><%= stations.get(i).getName() %></td>--%>
<%--                    <td><%= stations.get(i).getDistance() %></td>--%>
<%--                    <td><%= stations.get(i).getAddress() %></td>--%>
<%--                    <%--%>
<%--                        if (stations.get(i).isPassengerStation() == true) {--%>
<%--                    %>--%>
<%--                    <td><input type="checkbox" checked readonly></td>--%>
<%--                    <%--%>
<%--                    } else {--%>
<%--                    %>--%>
<%--                    <td><input type="checkbox" readonly></td>--%>
<%--                    <%--%>
<%--                        }--%>
<%--                    %>--%>
<%--                    <td><a class="btn btn-primary" href="EditStation?id=<%= stations.get(i).getID() %>">Sửa</a></td>--%>
<%--                    <td><a class="btn btn-danger" href="DeleteStation?id=<%= stations.get(i).getID() %>">Xóa</a></td>--%>
<%--                </tr>--%>
<%--                <% } %>--%>

<%--                </tbody>--%>
<%--            </table>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <!-- /.content-wrapper -->--%>

<%--</div>--%>
<%--<!-- ./wrapper -->--%>

<%--<!-- REQUIRED SCRIPTS -->--%>

<%--<!-- jQuery -->--%>
<%--<script src="plugins/jquery/jquery.min.js"></script>--%>
<%--<!-- Bootstrap 4 -->--%>
<%--<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>--%>
<%--<!-- AdminLTE App -->--%>
<%--<script src="dist/js/adminlte.min.js"></script>--%>
<%--</body>--%>
<%--</html>--%>
