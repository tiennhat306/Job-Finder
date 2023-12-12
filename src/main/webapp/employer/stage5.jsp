<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dalton</title>
    <link href="assets/css/stage.css" rel="stylesheet"
	type="text/css" />
	<link href="employer/assets/css/stage.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
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
                        <p>Lịch đăng và thanh toán</p>
                    </div>
                    <div class="icon">
                        <a href="">6</a>
                        <p>Xem lại</p>
                    </div>
                </div>
            </div>
            <div class="form_infomation">
                <form action="">
                    <label for="company">Thời gian</label>
                    <div class="form_time">
                        <div class="col-md-3-salary">
                            <input type="radio" name="company" id="nhap" required>
                            <label for="nhap">30 ngày</label>
                        </div>
                    
                        <div class="col-md-3-salary">
                            <input type="radio" name="company" id="hon" required>
                            <label for="hon">45 ngày</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="company">Ngày đăng</label>
                            <input type="date" name="postingDate" id="postingDate" required>
                        </div>
                    </div>
                    <label for="company">Ưu tiên hiển thị</label>
                    <div class="form_time">
                        <div class="col-md-3-salary">
                            <input type="radio" name="company" id="nhap" required>
                            <label for="nhap">Có</label>
                        </div>
                    
                        <div class="col-md-3-salary">
                            <input type="radio" name="company" id="hon" required>
                            <label for="hon">Không</label>
                        </div>
                    </div>
                    <label for="company">Cách hiển thị</label>
                    <div class="form_time">
                        <div class="col-md-3-salary">
                            <input type="radio" name="company" id="nhap" required>
                            <label for="nhap">Bình thường</label>
                        </div>
                    
                        <div class="col-md-3-salary">
                            <input type="radio" name="company" id="hon" required>
                            <label for="hon">Đậm</label>
                        </div>
                        <div class="col-md-3-salary">
                            <input type="radio" name="company" id="hon" required>
                            <label for="hon">Đỏ Đậm</label>
                        </div>
                    </div>
                    <label for="company">Phương thức thanh toán</label>
                    <div class="form_time">
                        <div class="col-md-3-salary">
                            <input type="radio" name="company" id="nhap" required>
                            <label for="nhap">Miễn phí</label>
                        </div>
                    
                        <div class="col-md-3-salary">
                            <input type="radio" name="company" id="hon" required>
                            <label for="hon">Tiền mặt</label>
                        </div>

                        <div class="col-md-3-salary">
                            <input type="radio" name="company" id="hon" required>
                            <label for="hon">Chuyển qua ngân hàng</label>
                        </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">
                        <input type="button" value="Tiếp tục" name="buttonSaveStage5" onclick="redirectToStage6(); fillJob();">
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
