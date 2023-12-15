<%@ page import="DTO.EmployerSessionItem" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông tin liên hệ</title>
    <link href="assets/css/stage.css" rel="stylesheet"
	type="text/css" />
	<link href="employer/assets/css/stage.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="shortcut icon" type="image/x-icon" href="candidate/img/logo_title.png">
    <style>
        select[name="employeeLanguage"] {
            width: 40%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .checkbox_wrapper {
            display: flex;
            align-items: center;
        }

        .checkbox_wrapper input {
            margin-right: 8px;
            width: 1rem;
        }
        
        .checkbox_wrapper label {
            font-size: 14px;
        }
    </style>
    <script>
        function redirectToStage5() {
            window.location.href = "${pageContext.request.contextPath}/employer/stage5.jsp";
        }
    </script>
</head>
<body>
    <%
        EmployerSessionItem employer = (EmployerSessionItem) session.getAttribute("employerSession");
        if(employer == null){
            response.sendRedirect("../ErrorServlet");
            return;
        }
    %>
    <header>
        <h1>Dalton</h1>
        <nav>
            <a href="#">Cho người tìm việc</a>
            <a href="#">Cho nhà tuyển dụng</a>
        </nav>
    </header>
    <main>
        <section class="dashboard">
            <div class="nav-info">
                <div class="icons">
                    <div class="icon">
                        <a href="/FindJobNew/index.html">1</a>
                        <p>Thông tin công việc</p>
                    </div>
                    <div class="icon">
                        <a href="/FindJobNew/stage2.html">2</a>
                        <p>Mô tả công việc</p>
                    </div>
                    <div class="icon">
                        <a href="/FindJobNew/stage3.html">3</a>
                        <p>Phúc lợi công việc</p>
                    </div>
                    <div class="icon active">
                        <a href="/FindJobNew/stage4.html">4</a>
                        <p>Thông tin liên hệ</p>
                    </div>
                    <div class="icon">
                        <a href="/FindJobNew/stage5.html">5</a>
                        <p>Lịch đăng</p>
                    </div>
                    <div class="icon">
                        <a href="">6</a>
                        <p>Xem lại</p>
                    </div>
                </div>
            </div>
            <div class="form_infomation">
                <form action="PostNewJobServlet" method="post" onsubmit="return fillJob();">
                    <h2>Thông tin liên hệ</h2>
                    <div class="row">
                        <div class="col-md-12">
                            <label>Tên liên hệ</label>
                            <input type="text" name="contact_name" id="contact_name" placeholder="Nhập tên liên hệ của bạn" required>
                        </div>
                        <div class="col-md-12">
                            <label>Địa chỉ liên hệ</label>
                            <input type="text" name="contact_address" id="contact_address" placeholder="Nhập địa chỉ liên hệ của bạn" required>
                        </div>
                        <div class="col-md-12">
                            <label>Điện thoại liên lạc</label>
                            <input type="text" name="contact_number" id="contact_number" placeholder="Nhập số điện thoại liên lạc của bạn" required>
                        </div>
                        <div class="col-md-12">
                            <label>Email liên hệ</label>
                            <input type="text" name="contact-email" id="contact-email" placeholder="Nhập email của bạn" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <input type="submit" name="buttonSaveStage4" value="Tiếp tục">
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </main>
    
    <script>
		function fillJob() {
			// Retrieve values from form inputs
			var contactName = document.getElementById('contact_name').value;
			var contactNumber = document.getElementById('contact_number').value;
			var contactEmail = document.getElementById('contact-email').value;

			// Store values in localStorage
			localStorage.setItem('stage4_contactName', contactName);
			localStorage.setItem('stage4_contactNumber', contactNumber);
			localStorage.setItem('stage4_contactEmail', contactEmail);

		}
	</script>
</body>
</html>
