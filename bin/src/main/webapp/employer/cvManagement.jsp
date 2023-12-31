<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thư xin việc đã nhận</title>
    <link rel="stylesheet" href="assets/css/bootstrap2.css">
    <link rel="stylesheet" href="assets/css/toastr.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
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
    </style>
</head>
<body class="cv-employer">
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
                    <form id="form-filter" method="GET" class="form-inline">
                        <div class="row" id="appointment-management" data-id="">
                            <div class="form-group">
                                <select
                                        id="status-filter"
                                        name="status"
                                        class="custom-select select-filter mb-1 text-primary">
                                    <option value="" selected>Không tìm thấy việc làm nào</option>
                                    <%
                                        List<String> listTitle = (ArrayList<String>) request.getAttribute("listTitle");
                                        for (int i = 0; i < listTitle.size(); ++i) {
                                    %>
                                        <option value="<% listTitle.get(i); %>">listTitle.get(i)</option>
                                    <%
                                        }
                                    %>
                                </select>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="job-short-info d-flex mt-3">
                    <div class="col-4 p-3 bg-white d-flex flex-column justify-content-center shortInfo-0-2-12">
                        <div class="shortInfoLabel-0-2-13">Tổng số ứng viên</div>
                        <div class="content-0-2-14 mt-2">
                            0
                            <i class="far fa-folder"></i>
                        </div>
                    </div>
                    <div class="col-4 p-3 bg-white d-flex flex-column justify-content-center shortInfo-0-2-12">
                        <div class="shortInfoLabel-0-2-13">Tổng số lượt xem</div>
                        <div class="content-0-2-14 mt-2">
                            0
                            <i class="fas fa-eye"></i>
                        </div>
                    </div>
                    <div class="col-4 p-3 bg-white d-flex flex-column justify-content-center shortInfo-0-2-12">
                        <div class="shortInfoLabel-0-2-13">Ngày đăng</div>
                        <div class="content-0-2-14 mt-2">
                            N/A
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
                            <form id="form-filter" method="GET" class="form-inline">
                                <div class="row" id="appointment-management" data-id="">
                                    <div class="form-group">
                                        <select
                                                id="status-filter"
                                                name="status"
                                                class="custom-select select-filter mb-1 text-secondary">
                                            <option value="" selected>Tất cả thư xin việc</option>
                                            <option value="1">Kiểm tra hồ sơ - Chưa quyết định</option>
                                            <option value="2">Đã mời nhận việc</option>
                                            <option value="3">Từ chối</option>
                                        </select>
                                    </div>
                                </div>
                            </form>
                            <form id="form-filter" method="GET" class="form-inline">
                                <div class="row" id="appointment-management" data-id="">
                                    <div class="form-group">
                                        <select
                                                id="status-filter"
                                                name="status"
                                                class="custom-select select-filter mb-1 text-secondary" style="margin-left: 25%">
                                            <option value="" selected>Nhận trong vòng</option>
                                            <option value="1">Trong vòng 1 ngày</option>
                                            <option value="2">Trong vòng 3 ngày</option>
                                            <option value="3">Trong vòng 1 tuần</option>
                                            <option value="4">Trong vòng 2 tuần</option>
                                            <option value="5">Trong vòng 1 tháng</option>
                                        </select>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="row no-gutters text-secondary font-weight-bold d-flex bg-light py-3">
                        <div class="col-7 d-flex">
                            <div class="col-5">Thư xin việc</div>
                            <div class="text-left col-3">Nhận lúc</div>
                            <div class="text-left col-3">Trạng thái</div>
                        </div>
                        <div class="col-5 d-flex">
                            <div class="text-left col-6">Loại</div>
                            <div class="text-center col-3">Ghi chú</div>
                            <div class="text-center col-3">Tin nhắn</div>
                        </div>
                    </div>
                    <div class="mt-2"></div>
                    <div class="d-flex justify-content-center align-items-center py-4">
                        <div class="text-center">
                            <img src="/assets/images/empty-applications.png" alt="Chưa có đơn ứng tuyển nào phù hợp với trạng thái này">
                            <p>Chưa có ứng viên nào ứng tuyển</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
