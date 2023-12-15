<%@ page import="DTO.EmployerSessionItem" %>
<%@ page import="model.bean.Career" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.bean.City" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<title>Mô tả công việc</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- App favicon -->
<link href="assets/css/stage.css" rel="stylesheet" type="text/css" />
<link href="employer/assets/css/stage.css" rel="stylesheet" type="text/css" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	rel="stylesheet" type="text/css" />
	<link rel="shortcut icon" type="image/x-icon" href="candidate/img/logo_title.png">
<script>
	function redirectToStage3() {
		window.location.href = "${pageContext.request.contextPath}/employer/stage3.jsp";
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
					<div class="icon">
						<a href="/FindJobNew/index.html">1</a>
						<p>Thông tin công việc</p>
					</div>
					<div class="icon active">
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
					<h3>Mô tả công việc</h3>
					<div class="col-md-6">
						<div class="input-group-append">
							<label>Ngành nghề</label>
							<select name="JobID"
								id="JobID" required>
								<%
									ArrayList<Career> careerList = (ArrayList<Career>) request.getAttribute("careerList");
									for (Career career : careerList) {
								%>
								<option value="<%=career.getId()%>"><%=career.getName()%></option>
								<%}%>
							</select>
						</div>
					</div>
					<div class="form_position">
						<div class="col-md-12">
							<label>Tỉnh/thành phố</label> <select name="cityID"
								id="cityID" required>
								<%
									ArrayList<City> cities = (ArrayList<City>) request.getAttribute("cityList");
									for (City city : cities) {
								%>
								<option value="<%=city.getId()%>"><%=city.getName()%></option>
								<%}%>
							</select>
						</div>
						<div class="col-md-12">
							<label >Địa chỉ</label> <input type="text"
								name="address" id="address"
								placeholder="Nhập địa chỉ công ty của bạn" required>
						</div>
					</div>

					<div class="col-md-12 form_position">
						<div class="col-md-6">
							<label >Loại công việc</label> <select
								name="job_type" id="job_type" required>
								<option value="1">Nhân viên toàn thời gian</option>
								<option value="2">Nhân viên bán thời gian</option>
								<option value="3">Nhân viên hợp đồng</option>
								<!-- Add more options as needed -->
							</select>
						</div>
						<div class="col-md-6">
							<label>Cấp bậc</label> <select name="rank"
								id="rank" required>
								<option value="1">Sinh viên/Thực
									tập sinh</option>
								<option value="2">Mới đi làm</option>
								<option value="3">Nhân viên</option>
								<option value="4">Kỹ sư</option>
								<option value="5">Quản lý</option>
								<option value="6">Cao hơn</option>
								<!-- Add more options as needed -->
							</select>
						</div>
					</div>
					<div>

						<label>Lương</label>
						<div class="SalaryStructure col-md-12">
							<div class="col-md-3-salary">
								<input type="radio" name="salary_type" id="nhap" value="1"
									   required> <label for="nhap">Nhập</label>
							</div>

							<div class="col-md-3-salary">
								<input type="radio" name="salary_type" id="hon" value="2"
									   required> <label for="hon">Hơn</label>
							</div>

							<div class="col-md-3-salary">
								<input type="radio" name="salary_type" id="thuongluong"
									   value="3" required> <label for="thuongluong">Thương
								lượng</label>
							</div>

							<div class="col-md-3-salary">
								<input type="radio" name="salary_type" id="canhtranh" value="4"
									   required> <label for="canhtranh">Cạnh tranh</label>
							</div>
						</div>
						<div>
							<div class="col-md-12 form_position">
								<div class="col-md-6">
									<div class="input-group-append">
										<input type="text" name="salary_from" id="salary_from" class="form-control"
											   placeholder="Số tiền">
									</div>
								</div>
								<div class="col-md-6">
									<div class="input-group-append">
										<input type="text" name="salary_to" id="salary_to" class="form-control"
											   placeholder="Số tiền">
									</div>
								</div>
							</div>
						</div>
					</div>


					<label>Tuổi</label>
					<div class="SalaryStructure">
						<div class="col-md-3-salary">
							<input type="radio" name="age_type" id="batky" value="1"
								   required> <label>Bất kỳ</label>
						</div>

						<div class="col-md-3-salary">
							<input type="radio" name="age_type" id="lonhon" value="2"
								   required> <label>Lớn hơn</label>
						</div>

						<div class="col-md-3-salary">
							<input type="radio" name="age_type" id="behon"
								   value="3" required> <label>Bé hơn</label>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 form_position">
							<div class="col-md-6">
								<div class="input-group-append">
									<input type="text" name="salary_from" id="age_from" class="form-control"
										   placeholder="Tuổi">
								</div>
							</div>
							<div class="col-md-6">
								<div class="input-group-append">
									<input type="text" name="salary_to" id="age_to" class="form-control"
										   placeholder="Tuổi">
								</div>
							</div>
						</div>
					</div>

					<div class="row col-md-12">
						<div class="form_position col-md-12">

							<div class="col-md-6">
								<label>Số lượng cần tuyển</label> <input type="text"
																		 name="requireNumber" id="requireNumber" placeholder="Nhập số lượng cần tuyển"
																		 required>
							</div>
							<div class="col-md-6">
								<label for="employeeNumber">Giới tính</label> <select
									name="gender_type" id="employeeNumber" required>\
								<option value="0">Bất kỳ</option>
								<option value="1">Nam</option>
								<option value="2">Nữ</option>
								<!-- Add more options as needed -->
							</select>
							</div>
						</div>
					</div>

					<div class="col-md-12">
						<label for="summary">Mô tả công việc</label>
						<textarea name="job_description" id="summary" rows="5"
								  placeholder="Mô tả công việc"></textarea>
					</div>

					<div class="row_experience">
						<div class="col-md-12">
							<h3>Kinh nghiệm/Kỹ năng</h3>
							<div class="form_position">
								<div class="col-md-6">
									<label>Trình độ học vấn</label>
									<select
											name="qualification" id="qualification" required>
										<option value="1">THPT</option>
										<option value="2">Chứng chỉ</option>
										<option value="3">Trung cấp</option>
										<option value="4">Cao đẳng</option>
										<option value="5">Cử nhân</option>
										<option value="6">Kỹ sư</option>
										<option value="7">Thạc sĩ</option>
										<option value="8">Tiến sĩ</option>
										<!-- Add more options as needed -->
									</select>
								</div>
								<div class="col-md-6">
									<label>Mức kinh nghiệm</label>
									<select name="yearOfExperience" id="yearOfExperience" required>
										<option value="1">0 - 1 năm kinh nghiệm</option>
										<option value="2">1 - 2 năm kinh nghiệm</option>
										<option value="3">2 - 5 năm kinh nghiệm</option>
										<option value="4">5 - 10 năm kinh nghiệm</option>
										<option value="5">Hơn 10 năm kinh nghiệm</option>
										<!-- Add more options as needed -->
									</select>
								</div>
							</div>
							<div class="col-md-12">
								<label for="summary">Kinh nghiệm/Kỹ năng chi tiết</label>
								<textarea name="requirements" id="requirements" rows="5"
										  placeholder="Nhập các yêu cầu kỹ năng chi tiết"></textarea>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<input type="submit" name="buttonSaveStage2" value="Tiếp tục">
						</div>
					</div>
				</form>
			</div>
		</section>
	</main>

	<script>
		function fillJob() {
			// Retrieve values from form inputs
			var selectedOption = document.getElementById('cityID');
			var cityText = selectedOption.options[selectedOption.selectedIndex].text;
			var address = document.getElementById('address').value;
			var job_type = document.getElementById('job_type');
			var newJobType = job_type.options[job_type.selectedIndex].text;
			var rank = document.getElementById('rank');
			var newRank = rank.options[rank.selectedIndex].text;
			var job_description = document.getElementById('summary').value;
			var requirements = document.getElementById('requirements').value;
			var yearOfExperience = document.getElementById('yearOfExperience').value;
			var qualification = document.getElementById('qualification');
			var qualifiAfter = qualification.options[qualification.selectedIndex].text;
			var requireNumber = document.getElementById('requireNumber').value;
			var salaryFrom = document.getElementById('salary_from').value;
			var salaryTo = document.getElementById('salary_to').value;
	
			// Store values in localStorage
			localStorage.setItem('stage2_city', cityText);
			localStorage.setItem('stage2_address', address);
			localStorage.setItem('stage2_workType', newJobType);
			localStorage.setItem('stage2_job-description', job_description);
			localStorage.setItem('stage2_experience-detail', requirements);
			localStorage.setItem('stage2_rank', newRank);
			localStorage.setItem('stage2_yearOfExperience', yearOfExperience);
			localStorage.setItem('stage2_qualification', qualifiAfter);
			localStorage.setItem('stage2_requireNumber', requireNumber);
			localStorage.setItem('stage2_salaryFrom', salaryFrom);
			localStorage.setItem('stage2_salaryTo', salaryTo);
		}
	</script>
</body>
</html>
