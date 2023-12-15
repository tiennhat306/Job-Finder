<%@ page import="DTO.EmployerSessionItem" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lịch đăng</title>
    <link href="assets/css/stage.css" rel="stylesheet"
	type="text/css" />
	<link href="employer/assets/css/stage.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="shortcut icon" type="image/x-icon" href="candidate/img/logo_title.png">
    <style>
        .form_time {
            display: flex;
        }
        
    </style>
    <script>
        function redirectToStage6() {
            window.location.href = "${pageContext.request.contextPath}/employer/finalStage.jsp";
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
                    <div class="icon">
                        <a href="/FindJobNew/stage4.html">4</a>
                        <p>Thông tin liên hệ</p>
                    </div>
                    <div class="icon active">
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
                <form action="PostNewJobServlet" method="post">
                    <label>Thời gian</label>
                    <div class="row">
                        <div class="col-md-6">
                            <label>Ngày đăng</label>
                            <input type="date" name="postingDate" id="postingDate" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label>Ngày hết hạn</label>
                            <input type="date" name="expirationDate" id="expirationDate" required>
                        </div>
                    </div>

                    <div class="row">
                      <div class="col-md-12">
                        <input type="submit" value="Tạo" name="buttonSaveStage5">
                      </div>
                    </div>
                </form>
            </div>
        </section>
    </main>
    
    <script>
		function fillJob() {
			var contactEmail = document.getElementById('postingDate').value;

			// Store values in localStorage
			localStorage.setItem('stage5_postingDate', contactEmail);

		}
	</script>
</body>
</html>
