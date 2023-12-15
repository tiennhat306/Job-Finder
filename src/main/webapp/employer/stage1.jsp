<%@ page import="DTO.EmployerSessionItem" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Adminto - Responsive Admin Dashboard Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- App favicon -->
<link href="employer/assets/css/stage.css" rel="stylesheet"
	type="text/css" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	rel="stylesheet" type="text/css" />

<script>
	function redirectToStage2() {
		window.location.href = "${pageContext.request.contextPath}/employer/stage2.jsp";
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
	<main>
		<section class="dashboard">
			<div class="nav-info">
				<div class="icons">
					<div class="icon active">
						<a href="">1</a>
						<p>Thông tin công việc</p>
					</div>
					<div class="icon">
						<a href="">2</a>
						<p>Mô tả công việc</p>
					</div>
					<div class="icon">
						<a href="">3</a>
						<p>Phúc lợi công việc</p>
					</div>
					<div class="icon">
						<a href="">4</a>
						<p>Thông tin liên hệ</p>
					</div>
					<div class="icon">
						<a href="">5</a>
						<p>Lịch đăng và thanh toán</p>
					</div>
					<div class="icon">
						<a href="">6</a>
						<p>Xem lại</p>
					</div>
				</div>
			</div>
			<div class="form_infomation">
				<form action="PostNewJobServlet" method="post" onsubmit="return updateJobTitle();">
					<div class="form_position">
						<div class="row">
							<div class="col-md-12">
								<label for="position">Tiêu đề</label> <input type="text"
									name="title" id="title" class="position"
									placeholder="Nhập tiêu đề công việc tìm kiếm ứng viên" required>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="position">Mã việc làm</label> <input type="text"
									name="code" id="position"
									placeholder="Nhập mã việc làm của bạn">
							</div>
						</div>
					</div>
					<div class="row"></div>
					<div class="row">
						<div class="col-md-6">
							<label for="companyName">Tên công ty</label>
							<input type="text"
								name="companyName" id="companyName"
								placeholder="Nhập tên công ty của bạn" required>
						</div>
						<div class="col-md-12">
							<label for="summary">Sơ lược công ty</label>
							<textarea name="summary" id="summary" rows="5"
								placeholder="Nhập sơ lược về công ty của bạn"></textarea>
						</div>
						<div class="col-md-6">
							<label for="employeeNumber">Số nhân viên</label> <select
								name="employeeNumber" id="employeeNumber" required>
								<option value="9">Ít hơn 10</option>
								<option value="24">1-24</option>
								<option value="99">25-99</option>
								<option value="499">100-499</option>
								<option value="999">500-999</option>
								<option value="4999">1000-4999</option>
								<option value="9999">5000-9999</option>
								<option value="19999">10000-19999</option>
								<option value="49999">20000-49999</option>
								<option value="51000">Hơn 50000</option>
							</select>
						</div>
						<div class="col-md-6">
							<label for="Website">Website công ty</label> <input type="text"
								name="Website" id="Website" required>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<input type="submit" name="buttonSaveStage1" value="Tiếp tục">
						</div>
					</div>
				</form>
			</div>
		</section>
	</main>
	
	<script>
    function updateJobTitle() {
    	// Retrieve values from form inputs
    	var userInput = document.getElementById('title').value;
    	var companyName = document.getElementById('companyName').value;
    	var descriptCompany = document.getElementById('summary').value;
    	var employeeNumber = document.getElementById('employeeNumber').value;
    	var website = document.getElementById('Website').value;

    	// Store values in localStorage
    	localStorage.setItem('stage1_userJobTitle', userInput);
    	localStorage.setItem('stage1_companyName', companyName);
    	localStorage.setItem('stage1_descriptCompany', descriptCompany);
    	localStorage.setItem('stage1_employeeNumber', employeeNumber);
    	localStorage.setItem('stage1_website', website); 
    }
</script>
</body>
</html>
