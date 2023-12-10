<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Job Board</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="manifest" href="site.webmanifest"> -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
<!-- Place favicon.ico in the root directory -->

<!-- CSS here -->
<link rel="stylesheet" href="../candidate/css/bootstrap.min.css">
<link rel="stylesheet" href="../candidate/css/owl.carousel.min.css">
<link rel="stylesheet" href="../candidate/css/magnific-popup.css">
<link rel="stylesheet" href="../candidate/css/font-awesome.min.css">
<link rel="stylesheet" href="../candidate/css/themify-icons.css">
<link rel="stylesheet" href="../candidate/css/nice-select.css">
<link rel="stylesheet" href="../candidate/css/flaticon.css">
<link rel="stylesheet" href="../candidate/css/gijgo.css">
<link rel="stylesheet" href="../candidate/css/animate.min.css">
<link rel="stylesheet" href="../candidate/css/slicknav.css">
<link rel="stylesheet" href="../candidate/css/style.css">
<!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>

<body>
	<!-- bradcam_area  -->
	<div class="bradcam_area bradcam_bg_1">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="bradcam_text">
						<h3 id="jobTitle"></h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/ bradcam_area  -->

	<div class="job_details_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="job_details_header">
						<div class="single_jobs white-bg d-flex justify-content-between">
							<div class="jobs_left d-flex align-items-center">
								<div class="thumb">
									<img src="img/svg_icon/1.svg" alt="">
								</div>
								<div class="jobs_conetent">
									<a href="#"><h4 id="jobBrand"></h4></a>
									<div class="links_locat d-flex align-items-center">
										<div class="location">
											<p id="companyName">
												<i class="fa fa-map-marker"></i>
											</p>
										</div>
										<div class="location">
											<p id="city">
												<i class="fa fa-clock-o"></i>
											</p>
										</div>
										<div class="location">
											<p id="address">
												<i class="fa fa-map-marker"></i>
											</p>
										</div>
									</div>
								</div>
							</div>
							<div class="jobs_right">
								<div class="apply_now">
									<a class="heart_mark" href="#"> <i class="ti-heart"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="descript_wrap white-bg">
						<div class="single_wrap">
							<h4>Sơ lược công ty</h4>
							<p id="company-description"></p>
						</div>
						<div class="single_wrap">
							<h4>Mô tả công việc</h4>
							<p id="job-description"></p>
						</div>
						<div class="single_wrap">
							<h4>Kinh nghiệm, kỹ năng chi tiết</h4>
							<p id="experience-detail"></p>
						</div>
						<div class="single_wrap">
							<h4>Phúc lợi công việc</h4>
							<p>There are many variations of passages of Lorem Ipsum
								available, but the majority have suffered alteration in some
								form, by injected humour, or randomised words which don't look
								even slightly believable. If you are going to use a passage of
								Lorem Ipsum, you need to be sure there isn't anything
								embarrassing.</p>
						</div>
					</div>
					<div class="apply_job_form white-bg">
						<h4>Apply for the job</h4>
						<form action="#">
							<div class="row">
								<div class="col-md-6">
									<div class="input_field">
										<input type="text" placeholder="Your name">
									</div>
								</div>
								<div class="col-md-6">
									<div class="input_field">
										<input type="text" placeholder="Email">
									</div>
								</div>
								<div class="col-md-12">
									<div class="input_field">
										<input type="text" placeholder="Website/Portfolio link">
									</div>
								</div>
								<div class="col-md-12">
									<div class="input-group">
										<div class="input-group-prepend">
											<button type="button" id="inputGroupFileAddon03">
												<i class="fa fa-cloud-upload" aria-hidden="true"></i>
											</button>
										</div>
										<div class="custom-file">
											<input type="file" class="custom-file-input"
												id="inputGroupFile03"
												aria-describedby="inputGroupFileAddon03"> <label
												class="custom-file-label" for="inputGroupFile03">Upload
												CV</label>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="input_field">
										<textarea name="#" id="" cols="30" rows="10"
											placeholder="Coverletter"></textarea>
									</div>
								</div>
								<div class="col-md-12">
									<div class="submit_btn">
										<button class="boxed-btn3 w-100" type="submit">Apply
											Now</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="job_sumary">
						<div class="summery_header">
							<h3>Chi tiết công việc</h3>
						</div>
						<div class="job_content">
							<ul>
								<li>Ngày đăng: <span>12 Nov, 2019</span></li>
								<li>Số lượng: <span>5</span></li>
								<li>Mức lương: <span>50k - 120k/y</span></li>
								<li>Loại công việc: <span id="workType"></span></li>
								<li>Cấp bậc: <span id="rank"></span></li>
								<li>Học vấn: <span> Full-time</span></li>
								<li>Mức kinh nghiệm: <span> Full-time</span></li>
							</ul>
						</div>
					</div>
					<div class="share_wrap d-flex">
						<span>Share at:</span>
						<ul>
							<li><a href="#"> <i class="fa fa-facebook"></i></a></li>
							<li><a href="#"> <i class="fa fa-google-plus"></i></a></li>
							<li><a href="#"> <i class="fa fa-twitter"></i></a></li>
							<li><a href="#"> <i class="fa fa-envelope"></i></a></li>
						</ul>
					</div>

					<div class="job_sumary">
						<div class="summery_header">
							<h3>Liên hệ</h3>
						</div>
						<div class="job_content">
							<ul>
								<li>Tên liên hệ: <span>12 Nov, 2019</span></li>
								<li>Nhận hồ sơ bằng ngôn ngữ: <span> Full-time</span></li>
								<li>Số nhân viên: <span id="staffNumber"></span></li>
								<li>Số điện thoại liên lạc: <span> Full-time</span></li>
								<li>Email liên lạc: <span> Full-time</span></li>
								<li>Website công ty: <span id="websiteCompany"> </span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="../candidate/js/vendor/modernizr-3.5.0.min.js"></script>
	<script src="../candidate/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="../candidate/js/popper.min.js"></script>
	<script src="../candidate/js/bootstrap.min.js"></script>
	<script src="../candidate/js/owl.carousel.min.js"></script>
	<script src="../candidate/js/isotope.pkgd.min.js"></script>
	<script src="../candidate/js/ajax-form.js"></script>
	<script src="../candidate/js/waypoints.min.js"></script>
	<script src="../candidate/js/jquery.counterup.min.js"></script>
	<script src="../candidate/js/imagesloaded.pkgd.min.js"></script>
	<script src="../candidate/js/scrollIt.js"></script>
	<script src="../candidate/js/jquery.scrollUp.min.js"></script>
	<script src="../candidate/js/wow.min.js"></script>
	<script src="../candidate/js/nice-select.min.js"></script>
	<script src="../candidate/js/jquery.slicknav.min.js"></script>
	<script src="../candidate/js/jquery.magnific-popup.min.js"></script>
	<script src="../candidate/js/plugins.js"></script>
	<script src="../candidate/js/gijgo.min.js"></script>

	<!--contact js-->
	<script src="../candidate/js/contact.js"></script>
	<script src="../candidate/js/jquery.ajaxchimp.min.js"></script>
	<script src="../candidate/js/jquery.form.js"></script>
	<script src="../candidate/js/jquery.validate.min.js"></script>
	<script src="../candidate/js/mail-script.js"></script>


	<script src="../candidate/js/main.js"></script>

	<script>
		// Check if user input exists in local storage for stage1
		var userJobTitle = localStorage.getItem('stage1_userJobTitle');
		var companyName = localStorage.getItem('stage1_companyName');
		var descriptCompany = localStorage.getItem('stage1_descriptCompany');
		var employeeNumber = localStorage.getItem('stage1_employeeNumber');
		var website = localStorage.getItem('stage1_website');
		
		var city = localStorage.getItem('stage2_city');
		var address = localStorage.getItem('stage2_address');
		var jobDescription = localStorage.getItem('stage2_job-description');
		var experienceDetail = localStorage.getItem('stage2_experience-detail');
		var workType = localStorage.getItem('stage2_workType');
		var rank = localStorage.getItem('stage2_rank');

		document.getElementById('jobTitle').innerText = userJobTitle;
		document.getElementById('jobBrand').innerText = userJobTitle;
		document.getElementById('companyName').innerHTML = "<i class='fa fa-map-marker'></i>" + companyName;
		document.getElementById('company-description').innerText = descriptCompany;
		document.getElementById('websiteCompany').innerText = website;		
		document.getElementById('staffNumber').innerText = employeeNumber;		
		
		document.getElementById('city').innerHTML = "<i class='fa fa-clock-o'></i>" + city;
		document.getElementById('address').innerHTML = "<i class='fa fa-clock-o'></i>" + address;	
		document.getElementById('job-description').innerText = jobDescription;		
		document.getElementById('experience-detail').innerText = experienceDetail;		
		document.getElementById('workType').innerText = workType;		
		document.getElementById('rank').innerText = rank;		
		
	</script>
</body>
</html>
