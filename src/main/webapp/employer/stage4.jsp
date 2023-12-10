<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dalton</title>
    <link href="assets/css/stage.css" rel="stylesheet"
	type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
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
                        <p>Lịch đăng và thanh toán</p>
                    </div>
                    <div class="icon">
                        <a href="">6</a>
                        <p>Xem lại</p>
                    </div>
                </div>
            </div>
            <div class="form_infomation">
                <form action="#">
                    <h2>Thông tin liên hệ</h2>
                    <label for="company">Nhận hồ sơ ứng viên bằng ngôn ngữ</label>
                    <div class="form_position">
                        <select name="employeeLanguage" id="employeeLanguage" required>
                            <option value="english">Tiếng Anh</option>
                            <option value="vietnamese">Tiếng Việt</option>
                            <option value="japanese">Tiếng Nhật</option>
                            <option value="chinese">Tiếng Trung</option>
                        </select>
                        
                        <div class="checkbox_wrapper">
                            <input type="checkbox" name="tick_Language" id="tick_Language" required>
                            <label for="tick_Language">Chỉ nhận hồ sơ theo ngôn ngữ đã chọn</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <label for="summary">Mô tả</label>
                            <textarea name="summary" id="summary" rows="10" placeholder=""></textarea>
                        </div>
                        <div class="col-md-6">
                            <label for="employeeNumber">Quốc gia</label>
                            <select name="employeeNumber" id="employeeNumber" required>
                                <option value="9">Việt Nam</option>
                                <option value="1-24">Hàn Quốc</option>
                                <option value="25-99">Đức</option>
                                <!-- Add more options as needed -->
                            </select>
                        </div>
                        <div class="SalaryStructure">
                            <div class="col-md-6">
                                <label for="employeeNumber">Tỉnh</label>
                                <select name="employeeNumber" id="employeeNumber" required>
                                    <option value="9">Đà Nẵng</option>
                                    <option value="1-24">Huế</option>
                                    <option value="25-99">Hà Nội</option>
                                    <!-- Add more options as needed -->
                                </select>
                            </div>
                        
                            <div class="col-md-6">
                                <label for="employeeNumber">Quận</label>
                                <select name="employeeNumber" id="employeeNumber" required>
                                    <option value="9">Liên Chiểu</option>
                                    <option value="1-24">Hải Châu</option>
                                    <option value="25-99">Thanh Khê</option>
                                    <!-- Add more options as needed -->
                                </select>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <label for="company">Địa chỉ</label>
                            <input type="text" name="company" id="company" placeholder="Nhập địa chỉ của bạn" required>
                        </div>
                        <div class="col-md-12">
                            <label for="company">Tên liên hệ</label>
                            <input type="text" name="company" id="company" placeholder="Nhập địa chỉ của bạn" required>
                        </div>
                        <div class="col-md-12">
                            <label for="company">Điện thoại liên lạc</label>
                            <input type="text" name="company" id="company" placeholder="Nhập địa chỉ của bạn" required>
                        </div>
                        <div class="col-md-12">
                            <label for="company">Email liên hệ</label>
                            <input type="text" name="company" id="company" placeholder="Nhập địa chỉ của bạn" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <input type="button" value="Lưu và thoát">
                            <input type="button" value="Tiếp tục" onclick="redirectToStage5()">
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </main>
</body>
</html>
