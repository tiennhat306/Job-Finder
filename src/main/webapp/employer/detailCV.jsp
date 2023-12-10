<%@ page import="DTO.CVDetailItem" %>
<%@ page import="enums.CVStatus" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết thư xin việc</title>
    <link rel="stylesheet" href="employer/assets/css/detailcv.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <style>

    </style>
</head>
<body>
<header>
    <h1>Chi tiết thư xin việc</h1>
</header>
<main>
    <%
        CVDetailItem detail = (CVDetailItem) request.getAttribute("detailCV");
    %>
    <section class="dashboard">
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
                        <label for="cvfile">Hồ sơ</label>
                        <div class="download-btn" id="cvfile">
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
                        <label for="status">Trạng thái</label>
                        <select name="status" id="status" required>
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
</main>
</body>
</html>

