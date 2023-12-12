<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="DTO.CVComboboxItem" %>
<%@ page import="DTO.CVInfoItem" %>
<%@ page import="DTO.CVDataItem" %>
<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="enums.CVStatus" %>
<%@ page import="DTO.EmployerSessionItem" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thư xin việc đã nhận</title>
    <link rel="shortcut icon" href="employer/assets/images/logo-title.png" />
    <link rel="stylesheet" href="employer/assets/css/bootstrap2.css">
    <link href="employer/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="employer/assets/css/toastr.min.css">
    <link href="employer/assets/css/app.min.css" rel="stylesheet" type="text/css" />
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <!-- <script src="libs/toastr/toastr.min.js"></script>
    <script src="js/pages/toastr.init.js"></script> -->
    <style>
        .form-group {
            display: inline-block;
        }

        .page-title {
            font-weight: 700;
            font-size: 20px;
            line-height: 1.4;
            color: #084ABC;
            padding-top: 20px !important;
        }

        h1, h2, h3, h4, h5, h6 {
            letter-spacing: -1px;
            font-family: "Nunito Sans", sans-serif;
        }

        p {
            margin-top: 0;
            margin-bottom: 1rem;
        }

        label {
            display: block;
            font-family: Arial, sans-serif;
            text-transform: uppercase;
            margin: 10px 0;
            font-weight: bold;
        }

        .rounded-circle.img-thumbnail.picture-form {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 150px;
            height: 150px;
            position: absolute;
        }

        .input-box {
            position: relative;
        }

        .before-input {
            position: absolute;
            left: 10px;
            top: 10px;
        }

        .after-input {
            position: absolute;
            right: 10px;
            top: 10px;
        }

        .col-sm-12.input-info {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .col-sm-12.input-info:focus {
            border: 1px solid #66afe9;
            border-radius: 5px;
            box-shadow: 0 0 5px #66afe9;
        }

        #statusAppointment:disabled {
            background-color: #f9f9f9;
            color: #999;
            cursor: not-allowed;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: none;
        }

        select {
            padding: 5px;
        }

        input[type='radio'] {
            width: 20px;
            height: 20px;
            margin-right: 5px;
            position: relative;
        }

        .radioText {
            margin-left: 5px;
            font-weight: bold;
            font-size: 14px;
        }

        .radioBox {
            width: 100%;
            display: flex;
            margin-right: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        span.error {
            color: red;
        }

        .btn.btn-sm.update-info-btn,
        .btn.btn-sm.edit-btn {
            text-transform: uppercase;
            padding: 5px 10px;
            margin-left: 10px;
            border-radius: 5px;
            border: none;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
        }

        .flex-grow-1 {
            flex-grow: 1 !important;
        }

        .employer-pages-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 16px;
            margin-bottom: 16px;
        }

        .bg-white {
            background-color: #fff !important;
        }

        .d-block {
            display: block !important;
        }

        .text-secondary {
            color: #6c757d !important;
        }

        .container-fluid {
            width: 100%;
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
        }

        .flex-column {
            flex-direction: column !important;
        }

        .d-flex {
            display: flex !important;
        }

        .align-items-center {
            align-items: center !important;
        }

        .flex-wrap {
            flex-wrap: wrap !important;
        }

        .text-nowrap {
            white-space: nowrap !important;
        }

        .text-primary {
            color: #0069DB !important;
            margin-left: 5%;
        }

        .job-short-info {
            gap: 12px;
        }

        .shortInfo-0-2-12 {
            width: calc(33.33% - 8px);
            max-width: calc(33.33% - 8px);
            border-radius: 2px;
        }

        .shortInfoLabel-0-2-13 {
            color: #64748B;
            font-size: 12px;
            font-weight: 600;
            line-height: 16px;
        }

        .content-0-2-14 {
            color: #334155;
            font-size: 20px;
            font-weight: 700;
            line-height: 1.4;
        }

        .font-weight-bold {
            font-weight: 700 !important;
        }

        .bg-light {
            background-color: #F1F5F9 !important;
        }

        .no-gutters {
            margin-right: 0;
            margin-left: 0;
        }

        .text-left {
            text-align: left !important;
        }

        .text-center {
            text-align: center !important;
        }

        .text-tertiary {
            color: #334155;
        }
    </style>
</head>
<body class="cv-employer">
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
            <div class="cv-management flex-grow-1">
                <div class="cv-management-header bg-white employer-pages-header">
                    <h1 class="h4 page-title mb-0 pl-0 pb-3" style="color: #084ABC;">Thư xin việc đã nhận</h1>
                    <div>
                        <span class="consumed-quota-credits d-blocks">0</span>
                        <span class="text-secondary text-small d-block">Credits Left</span>
                    </div>
                </div>
                <div class="cv-management-body">
                    <div class="container-fluid mb-3 mb-lg-3">
                        <div class="d-flex flex-column">
                            <div class="d-flex align-items-center flex-wrap">
                                <div class="mr-2 text-nowrap">
                                    Tên công việc:
                                </div>
                                <form id="form-filter-1" method="GET" class="form-inline">
                                    <div class="row" id="appointment-management-1" data-id="">
                                        <div class="form-group">
                                            <select
                                                    id="status-id"
                                                    name="status"
                                                    class="custom-select select-filter mb-1 text-primary"
                                                    onchange="submitForm()"
                                            >
                                                <%
                                                    List<CVComboboxItem> listTitle = (ArrayList<CVComboboxItem>) request.getAttribute("listTitle");
                                                    if (listTitle.size() == 0) {
                                                %>
                                                <option value="" selected>Không tìm thấy việc làm nào</option>
                                                <%
                                                } else {
                                                    for (int i = 0; i < listTitle.size(); ++i) {
                                                %>
                                                <option value="<%= listTitle.get(i).getId() %>"><%= listTitle.get(i).getTitle() %></option>
                                                <%
                                                        } }
                                                %>
                                            </select>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <%
                                List<CVInfoItem> listCvInfo = (ArrayList<CVInfoItem>) request.getAttribute("listCvInfo");
                                int last = listCvInfo.size();
                                int numCandidate = 0, numView = 0;
                                String post = "NA";
                                if (last != 0) {
                                    numCandidate = listCvInfo.get(last - 1).getNumCandidate();
                                    numView = listCvInfo.get(last - 1).getView();
                                    SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
                                    post = dateFormat.format(listCvInfo.get(last - 1).getPublishDay());
                                }
                            %>
                            <div class="job-short-info d-flex mt-3">
                                <div class="col-4 p-3 bg-white d-flex flex-column justify-content-center shortInfo-0-2-12">
                                    <div class="shortInfoLabel-0-2-13">Tổng số ứng viên</div>
                                    <div class="content-0-2-14 mt-2">
                                        <%= numCandidate %>
                                        <i class="far fa-folder"></i>
                                    </div>
                                </div>
                                <div class="col-4 p-3 bg-white d-flex flex-column justify-content-center shortInfo-0-2-12">
                                    <div class="shortInfoLabel-0-2-13">Tổng số lượt xem</div>
                                    <div class="content-0-2-14 mt-2">
                                        <%= numView %>
                                        <i class="fas fa-eye"></i>
                                    </div>
                                </div>
                                <div class="col-4 p-3 bg-white d-flex flex-column justify-content-center shortInfo-0-2-12">
                                    <div class="shortInfoLabel-0-2-13">Ngày đăng</div>
                                    <div class="content-0-2-14 mt-2">
                                        <%= post %>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="container-fluid my-3">
                        <div class="d-flex flex-column bg-white p-md-4">
                            <div class="container-0-2-16 flex-grow-1">
                                <div class="d-flex justify-content-between flex-wrap px-2 px-md-0 py-3 pt-md-0 pb-md-4">
                                    <div class="d-flex justify-content-between align-items-center header-0-2-15">
                                        <form id="form-filter-2" method="GET" class="form-inline">
                                            <div class="row" id="appointment-management-2" data-id="">
                                                <div class="form-group">
                                                    <select
                                                            id="status-type"
                                                            name="status"
                                                            class="custom-select select-filter mb-1 text-secondary"
                                                            onchange="submitFormType()"
                                                    >
                                                        <option value="0" selected>Tất cả thư xin việc</option>
                                                        <option value="1">Kiểm tra hồ sơ</option>
                                                        <option value="2">Đã duyệt</option>
                                                        <option value="3">Từ chối</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </form>
                                        <form id="form-filter-3" method="GET" class="form-inline">
                                            <div class="row" id="appointment-management-3" data-id="">
                                                <div class="form-group">
                                                    <select
                                                            id="status-received"
                                                            name="status"
                                                            class="custom-select select-filter mb-1 text-secondary" style="margin-left: 25%"
                                                            onchange="submitFormRange()"
                                                    >
                                                        <option value="0" selected>Nhận trong vòng</option>
                                                        <option value="1">Trong vòng 1 ngày</option>
                                                        <option value="3">Trong vòng 3 ngày</option>
                                                        <option value="7">Trong vòng 1 tuần</option>
                                                        <option value="14">Trong vòng 2 tuần</option>
                                                        <option value="30">Trong vòng 1 tháng</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="table-responsive">
                                    <table id="jobboard-table" class="table table-bordered table-hover mb-0 text-center">
                                        <thead class="thead-dark">
                                        <tr>
                                            <th>Tên công việc</th>
                                            <th>Tên ứng viên</th>
                                            <th>Số điện thoại</th>
                                            <th>Email</th>
                                            <th>Nhận lúc</th>
                                            <th>Trạng thái</th>
                                            <th>Hành động</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <%
                                            List<CVDataItem> list = (ArrayList<CVDataItem>) request.getAttribute("listCvData");
                                            if (list.size() != 0) {
                                        %>
                                        <% for (int i = 0; i < list.size(); ++i) { %>
                                        <tr >
                                            <td><%= list.get(i).getTitle() %></td>
                                            <td><%= list.get(i).getNameCandidate() %></td>
                                            <td><%= list.get(i).getPhone() %></td>
                                            <td><%= list.get(i).getEmail() %></td>
                                            <td><%= new SimpleDateFormat("dd/MM/yyyy").format(list.get(i).getCreated_time()) %></td>
                                            <% if (CVStatus.getByValue(list.get(i).getStatus()) == CVStatus.KIEM_TRA_HO_SO) { %>
                                            <td class="text-secondary">Chờ xử lý</td>
                                            <% } else if (CVStatus.getByValue(list.get(i).getStatus()) == CVStatus.DA_DUYET) { %>
                                            <td class="text-primary">Đã duyệt</td>
                                            <% } else if (CVStatus.getByValue(list.get(i).getStatus()) == CVStatus.TU_CHOI) { %>
                                            <td class="text-danger">Từ chối</td>
                                            <% } %>
                                            <td>
                                                <% if (CVStatus.getByValue(list.get(i).getStatus()) == CVStatus.KIEM_TRA_HO_SO) { %>
                                                <div class="action action-2">
                                                    <i class="fa-solid fa-pen-to-square" style="color: blue;"></i>
                                                    <a href="DetailCVServlet?cvid=<%= list.get(i).getCvid() %>" style="color: blue;">Cập nhật</a>
                                                    <% } else { %>
                                                    <i class="fa-solid fa-pen-to-square"></i>
                                                    Cập nhật
                                                </div>
                                                <% } %>
                                            </td>
                                        </tr>
                                        <% } %> <% } else { %>
                                        <tr>
                                            <td colspan="7" class="text-center">
                                                <h4>Không có dữ liệu</h4>
                                            </td>
                                        </tr>
                                        <% } %>
                                        </tbody>
                                    </table>
<%--                                <div class="row no-gutters text-secondary font-weight-bold d-flex bg-light py-3">--%>
<%--                                    <div class="col-7 d-flex">--%>
<%--                                        <div class="col-4">Tên công việc</div>--%>
<%--                                        <div class="text-left col-3">Tên ứng viên</div>--%>
<%--                                        <div class="text-left col-3">Số điện thoại</div>--%>
<%--                                        <div class="text-left col-3">Email</div>--%>
<%--                                    </div>--%>
<%--                                    <div class="col-5 d-flex">--%>
<%--                                        <div class="text-center col-5">Nhận lúc</div>--%>
<%--                                        <div class="text-left col-4">Trạng thái</div>--%>
<%--                                        <div class="text-left col-4">Hành động</div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="mt-2"></div>--%>
<%--                                <%--%>
<%--                                    List<CVDataItem> list = (ArrayList<CVDataItem>) request.getAttribute("listCvData");--%>
<%--                                    if (list.size() == 0) {--%>
<%--                                %>--%>
<%--                                <div class="d-flex justify-content-center align-items-center py-4">--%>
<%--                                    <div class="text-center">--%>
<%--                                        <img src="employer/assets/images/empty-applications.png" alt="Chưa có đơn ứng tuyển nào phù hợp với trạng thái này">--%>
<%--                                        <p>Chưa có ứng viên nào ứng tuyển</p>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <%--%>
<%--                                } else {--%>
<%--                                    for (int i = 0; i < list.size(); ++i) {--%>
<%--                                %>--%>
<%--                                <div class="row o-gutters text-tertiary font-weight-bold d-flex py-3">--%>
<%--                                    <div class="col-7 d-flex">--%>
<%--                                        <div class="col-4"><%= list.get(i).getTitle() %></div>--%>
<%--                                        <div class="text-left col-3"><%= list.get(i).getNameCandidate() %></div>--%>
<%--                                        <div class="text-left col-3"><%= list.get(i).getPhone() %></div>--%>
<%--                                        <div class="text-left col-3"><%= list.get(i).getEmail() %></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="col-5 d-flex">--%>
<%--                                        <div class="text-center col-5"><%= new SimpleDateFormat("dd/MM/yyyy").format(list.get(i).getCreated_time()) %></div>--%>
<%--                                        <div class="text-left col-4"><%= CVStatus.getByValue(list.get(i).getStatus()) %></div>--%>
<%--                                        <div class="text-left col-4">--%>
<%--                                            <% if (CVStatus.getByValue(list.get(i).getStatus()) == CVStatus.KIEM_TRA_HO_SO) { %>--%>
<%--                                            <i class="fa-solid fa-pen-to-square" style="color: blue;"></i>--%>
<%--                                            <a href="DetailCVServlet?cvid=<%= list.get(i).getCvid() %>" style="color: blue;">Cập nhật</a>--%>
<%--                                            <% } else { %>--%>
<%--                                            <i class="fa-solid fa-pen-to-square"></i>--%>
<%--                                            Cập nhật--%>
<%--                                            <% } %>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <%--%>
<%--                                        } }--%>
<%--                                %>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="layout/footer.jsp"></jsp:include>
    </div>
</div>

</body>
</html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="employer/assets/js/vendor.min.js"></script>
<script src="employer/assets/js/app.min.js"></script>
<script src="employer/assets/libs/toastr/toastr.min.js"></script>
<script src="employer/assets/js/pages/toastr.init.js"></script>
<script>
    window.addEventListener('DOMContentLoaded', function() {
        var urlParams = new URLSearchParams(window.location.search);
        var id = urlParams.get('id');
        var stt = urlParams.get('status');
        var range = urlParams.get('received');

        if (id) {
            var statusFilter = document.getElementById('status-id');
            var options = statusFilter.options;

            for (var i = 0; i < options.length; i++) {
                if (options[i].value === id) {
                    options[i].selected = true;
                    break;
                }
            }
        }
        if (stt) {
            var statusFilter = document.getElementById('status-type');
            var options = statusFilter.options;

            for (var i = 0; i < options.length; i++) {
                if (options[i].value === stt) {
                    options[i].selected = true;
                    break;
                }
            }
        }
        if (range) {
            var statusFilter = document.getElementById('status-received');
            var options = statusFilter.options;

            for (var i = 0; i < options.length; i++) {
                if (options[i].value === range) {
                    options[i].selected = true;
                    break;
                }
            }
        }
    });

    function submitForm() {
        var selectedOption = document.getElementById("status-id").value;
        var url = window.location.href.split('?')[0]; // Lấy URL hiện tại và loại bỏ tham số truy vấn (?id=value)

        if (selectedOption) {
            url += "?id=" + selectedOption; // Gán tham số truy vấn "?id=value" vào URL
        }
        window.location.href = url; // Chuyển hướng trình duyệt đến URL mới
    }
    function submitFormType() {
        var selectedOption = document.getElementById("status-type").value;
        var url = window.location.href.split('?')[0]; // Lấy URL hiện tại và loại bỏ tham số truy vấn (?status=value)

        if (selectedOption) {
            url += "?status=" + selectedOption; // Gán tham số truy vấn "?status=value" vào URL
        }

        var rangeOption = document.getElementById("status-received").value;
        if (rangeOption) {
            if (url.includes("?")) {
                url += "&received=" + rangeOption; // Thêm tham số truy vấn "&id=value" vào URL
            } else {
                url += "?received=" + rangeOption; // Thêm tham số truy vấn "?id=value" vào URL
            }
        }

        var idOption = document.getElementById("status-id").value;
        if (idOption) {
            if (url.includes("?")) {
                url += "&id=" + idOption; // Thêm tham số truy vấn "&id=value" vào URL
            } else {
                url += "?id=" + idOption; // Thêm tham số truy vấn "?id=value" vào URL
            }
        }

        window.location.href = url; // Chuyển hướng trình duyệt đến URL mới
    }
    function submitFormRange() {
        var selectedOption = document.getElementById("status-received").value;
        var url = window.location.href.split('?')[0]; // Lấy URL hiện tại và loại bỏ tham số truy vấn (?status=value)

        if (selectedOption) {
            url += "?received=" + selectedOption; // Gán tham số truy vấn "?status=value" vào URL
        }

        var statusOption = document.getElementById("status-type").value;
        if (statusOption) {
            if (url.includes("?")) {
                url += "&status=" + statusOption; // Thêm tham số truy vấn "&status=value" vào URL
            } else {
                url += "?status=" + statusOption; // Thêm tham số truy vấn "?status=value" vào URL
            }
        }

        var idOption = document.getElementById("status-id").value;
        if (idOption) {
            if (url.includes("?")) {
                url += "&id=" + idOption; // Thêm tham số truy vấn "&id=value" vào URL
            } else {
                url += "?id=" + idOption; // Thêm tham số truy vấn "?id=value" vào URL
            }
        }

        window.location.href = url; // Chuyển hướng trình duyệt đến URL mới
    }
</script>