<%@ page import="DTO.EmployerSessionItem" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>
    Quản lý đăng tuyển
  </title>
  <link rel="shortcut icon" href="employer/assets/images/logo-title.png" />
  <link href="employer/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
  <link href="employer/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
  <link href="employer/assets/css/app.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
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

  <!-- ============================================================== -->
  <!-- Start Page Content here -->
  <!-- ============================================================== -->

  <div class="content-page">
    <!-- content start -->
    <div class="content">
      <!-- Start Content-->
      <div class="container-fluid">
        <!-- content goes here -->
      <%--        -------------------------------------------------------------------------------------------%>

        <h2 class="text-center mb-2">Tổng quan</h2>

        <div class="row">
          <div class="col-xl-4 col-md-6">
            <div class="card-box">
              <h4 class="header-title mt-0 mb-2">Tuyển dụng trong ngày</h4>
              <div class="widget-chart-1 row">
                <div class="widget-detail-1 text-center col-12">
                  <h2 class="font-weight-normal pt-2 mb-1 text-danger" id="today-appointment">
                    <%
                      int todayJobBoards = (int) request.getAttribute("todayJobBoards");
                    %>
                    <%= todayJobBoards %>
                  </h2>
                  <p class="text-muted mb-1">Bài tuyển dụng</p>
                </div>
              </div>
            </div>
          </div>
          <!-- end col -->

          <div class="col-xl-4 col-md-6">
            <div class="card-box">
              <h4 class="header-title mt-0 mb-2">Tuyển dụng tháng trước</h4>
              <div class="widget-chart-1 row">
                <div class="widget-detail-1 text-center col-12">
                  <h2 class="font-weight-normal pt-2 mb-1 text-warning" id="pending-appointment">
                    <%
                      int lastMonthJobBoards = (int) request.getAttribute("lastMonthJobBoards");
                    %>
                    <%= lastMonthJobBoards %>
                  </h2>
                  <p class="text-muted mb-1">Bài tuyển dụng</p>
                </div>
              </div>
            </div>
          </div>
          <!-- end col -->
          <div class="col-xl-4 col-md-6">
            <div class="card-box">
              <h4 class="header-title mt-0 mb-2">Tuyển dụng trong tháng</h4>
              <div class="widget-chart-1 row">
                <div class="widget-detail-1 text-center col-12">
                  <h2 class="font-weight-normal pt-2 mb-1 text-primary" id="current-month-appointment">
                    <%
                        int currentMonthJobBoards = (int) request.getAttribute("currentMonthJobBoards");
                    %>
                    <%= currentMonthJobBoards %>
                  </h2>
                  <p class="text-muted mb-1">Đơn đặt</p>
                </div>
              </div>
            </div>
          </div>
          <!-- end col -->
        </div>

        <div class="row">
          <div class="col-12">
            <div class="card-box">
              <h3 class="mt-0 mb-2">Quản lý tuyển dụng</h3>
              <div class="row">
                <div class="col-md-2 mb-1">
                  <a href="EmployerHomepageServlet">
                    <i class="dripicons-clockwise"> Tải lại </i>
                  </a>
                </div>
              </div>

              <form id="form-filter" method="GET" class="form-inline">
                <div class="row" id="appointment-management" data-id="<%= employer.getCompanyName() %>">
                  <div class="form-group">
                    <div class="col-md-6">
                      <label class="d-block" for="status-filter">Trạng thái</label>
                    </div>
                    <div class="col-md-3 mb-1 ml-0 pl-0 mt-1 form-group">
                      <select
                              id="status-filter"
                              name="status"
                              class="custom-select select-filter mb-1"
                      >
                        <%
                            int selectedStatus = (int) request.getAttribute("selectedStatus");
                        %>
                        <option value="" selected>Tất cả</option>
                        <option value="1" <% if (selectedStatus == 2) { %> selected <% } %>>Chờ xử lý</option>
                        <option value="2" <% if (selectedStatus == 3) { %> selected <% } %>>Đang chờ</option>
                        <option value="3" <% if (selectedStatus == 4) { %> selected <% } %>>Kích hoạt</option>
                        <option value="4" <% if (selectedStatus == 5) { %> selected <% } %>>Hết hạn</option>
                      </select>
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="col-md-1 mb-1 ml-0 pl-0 mb-1 ml-auto form-group">
                      <div class="form-group app-search-box">
                        <div class="input-group">
                          <%
                            String search = (String) request.getAttribute("search");
                            if (search == null) { %>
                          <input
                                  type="text"
                                  class="form-control"
                                  name="q"
                                  placeholder="Nhập tên để tìm kiếm..."
                          />
                          <% } else { %>
                          <input
                                  type="text"
                                  class="form-control"
                                  name="q"
                                  value="<%= search %>"
                                  placeholder="Nhập tên để tìm kiếm..."
                          />
                          <% } %>
                          <div class="input-group-append bg-primary">
                            <button class="btn" type="submit">
                              <i class="fe-search"></i>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </form>

              <div class="table-responsive">
                <table id="appointment-table" class="table table-bordered table-hover mb-0 text-center">
                  <thead class="thead-dark">
                  <tr>
<%--                    <th>ID</th>--%>
                    <th>Trạng thái</th>
                    <th>Công việc</th>
                    <th>Đơn ứng tuyển</th>
                    <th>Lượt xem</th>
                    <th>Ngày bắt đầu</th>
                    <th>Ngày kết thúc</th>
                    <th>Hành động</th>
                  </tr>
                  </thead>
                  <tbody>
                  <%
                    List<>
                    if (appointments.length != 0) { %>
                  <% appointments.forEach(function(appointment) { %>
                  <tr >
                    <th scope="row"><%= appointment.id %></th>
                    <td><%= appointment.customer.name %></td>
                    <td><%= appointment.customer.phone_number %></td>
                    <td><%= appointment.customer.email %></td>
                    <td><%= appointment.schedule.doctor.user.name %></td>
                    <td><%= appointment.price %></td>
                    <td>
                      <% if (appointment.user == null) { %>
                      <i class="mdi mdi-null" style="color:purple"></i>
                      <%  } else { %>
                      <%= appointment.user.name %>
                      <% } %>
                    </td>
                    <% if (appointment.status == 2 ) { %>
                    <td style="color: rgb(196, 196, 114)">Chờ xử lý</td>
                    <% } else if (appointment.status == 3 ) { %>
                    <td class="text-primary">Xác nhận</td>
                    <% } else if (appointment.status == 4 ) { %>
                    <td class="text-danger">Từ chối</td>
                    <% } else if (appointment.status == 5) { %>
                    <td class="text-success">Khám xong</td>
                    <% } %>
                    <td>
                      <div class="action action-2">
                        <button
                                class="btn btn-sm btn-primary update-appointment-btn"
                                data-toggle="modal"
                                data-target="#ModalAppointment"
                                data-id="<%= appointment.id %>"
                        >
                          <i class="fas fa-edit"></i>
                        </button>
                      </div>

                    </td>
                  </tr>
                  <% }); %> <% } else { %>
                  <tr>
                    <td colspan="7" class="text-center">
                      <h4>Không có dữ liệu</h4>
                    </td>
                  </tr>
                  <% } %>
                  </tbody>
                </table>
                <!-- pagination -->
                <div class="row pt-2">
                  <div class="col-12">
                    <nav aria-label="...">
                      <% if (pages > 0) { %>
                      <ul class="pagination text-center">
                        <% if (current == 1) { %>
                        <li class="page-item disabled">
                          <a class="page-link" href="#" tabindex="-1">Đầu</a>
                        </li>
                        <% } else { %>
                        <li class="page-item">
                          <a
                                  class="page-link"
                                  href="/nurse?page=1&status=<%=selectedStatus%>&q=<%=search%>"
                                  tabindex="-1"
                          >
                            Đầu
                          </a>
                        </li>
                        <% } %> <% let i = (Number(current) > 5 ? Number(current) - 4 :
                        1) %> <% if (i != 1) { %>
                        <li class="page-item disabled">
                          <a class="page-link">...</a>
                        </li>
                        <% } %> <% for (; i <= pages && i <= Number(current) + 4; i++) {
                      %> <% if (i == current) { %>
                        <li class="page-item active">
                          <a class="page-link"><%=i%></a>
                        </li>
                        <% } else { %>
                        <li class="page-item">
                          <a
                                  class="page-link"
                                  href="/nurse?page=<%= i %>&status=<%=selectedStatus%>&q=<%=search%>"
                          ><%=i%>
                          </a>
                        </li>
                        <% } %> <% if (i == Number(current) + 4 && i < pages ) { %>
                        <li class="page-item disabled">
                          <a class="page-link">...</a>
                        </li>
                        <% } %> <% } %> <% if (current == pages) { %>
                        <li class="page-item disabled">
                          <a class="page-link">Cuối</a>
                        </li>
                        <% } else { %>
                        <li class="page-item">
                          <a
                                  class="page-link"
                                  href="/nurse?page=<%= pages %>&status=<%=selectedStatus%>&q=<%=search%>"
                          >
                            Cuối
                          </a>
                        </li>
                        <% } %>
                      </ul>
                      <% } %>
                    </nav>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div
                class="modal fade"
                id="ModalAppointment"
                tabindex="-1"
                role="dialog"
                aria-labelledby="myModalLabel"
        >
          <div class="modal-dialog" role="document" >
            <div class="modal-content"  style="width: 50vw; position: absolute; left: 50%; transform: translate(-50%);">
              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">Đơn đặt khám</h4>
                <button
                        type="button"
                        class="close"
                        data-dismiss="modal"
                        aria-label="Close"
                >
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <div class="row">
                  <div class="col-12">
                    <div class="col-12">
                      <form
                              class="form-horizontal"
                      >

                        <div class="form-group">
                          <div class="form-group row schedule-form">
                            <div class="col-sm-4">
                              <img src=""
                                   id="doctor-avatar"
                                   class="rounded-circle img-thumbnail picture-form"
                              >
                              <div class="dropdown">
                                <a
                                        href="#"
                                        class="text-dark dropdown-toggle h5 mt-2 mb-1 d-block"
                                        data-toggle="dropdown">
                                </a>
                              </div>
                            </div>
                            <div class="form-group col-sm-8">
                              <div class="row">
                                <label>Bác sĩ: &nbsp;</label>
                                <p id="doctor"></p>
                              </div>
                              <div class="row">
                                <label>Xuất khám: &nbsp;</label>
                                <p id="shift"></p>
                              </div>
                              <div class="row">
                                <label>Ngày khám: &nbsp;</label>
                                <p id="day"></p>
                              </div>
                            </div>
                          </div>
                          <div class="form-group row col-sm-12">
                            <div class="col-sm-12">
                              <label>Họ tên:</label>
                              <span class="error" id="name-error"></span>
                              <div class="input-box">
                                                <span class="before-input">
                                                    <i class="fas fa-user"></i>
                                                </span>
                                <input
                                        type="text"
                                        class="col-sm-12 input-info"
                                        id="nameCustomer"
                                        name="name"
                                        placeholder="Họ và tên"
                                        style="border: 0; border-radius: 0; border-bottom:1px solid #ccc;"
                                />
                              </div>
                            </div>
                            <div class="col-xl-6 col-md-12">
                              <label>Ngày sinh:</label>
                              <span class="error" id="birthday-error"></span>
                              <div class="input-box">
                                                <span class="before-input">
                                                    <i class="fas fa-calendar"></i>
                                                </span>
                                <input type="date" class="col-sm-12 input-info" id="birthdayCustomer" name="birthday" />
                              </div>
                            </div>
                            <div class="col-xl-6 col-md-12">
                              <label for="gender">
                                Giới tính:
                              </label>
                              <span
                                      class="error"
                                      id="gender-error"
                              ></span>
                              <br />
                              <div class="radioBox">
                                <input
                                        type="radio"
                                        class="col-sm-12"
                                        id="male"
                                        name="genderCustomer"
                                        value="1"
                                />
                                <label
                                        class="radioText"
                                        for="male"
                                >Nam</label
                                >
                              </div>
                              <div class="radioBox">
                                <input
                                        type="radio"
                                        class="col-sm-12"
                                        id="female"
                                        name="genderCustomer"
                                        value="0"

                                />
                                <label
                                        class="radioText"
                                        for="female"
                                >Nữ</label
                                >
                              </div>
                            </div>
                          </div>
                          <div class="form-group row col-12">
                            <div class="col-xl-6 col-md-12">
                              <label>Số điện thoại:</label>
                              <span class="error" id="phone-error"></span>

                              <div class="input-box">
                                                <span class="before-input">
                                                    <i class="fas fa-phone"></i>
                                                </span>
                                <input
                                        type="text"
                                        class="col-sm-12 input-info"
                                        id="phone_numberCustomer"
                                        name="phone_number"
                                        placeholder="Số điện thoại"
                                />
                              </div>
                            </div>
                            <div class="col-xl-6 col-md-12">
                              <label>Email:</label>
                              <span class="error" id="email-error"></span>

                              <div class="input-box">
                                                <span class="before-input">
                                                    <i class="fas fa-envelope"></i>
                                                </span>
                                <input
                                        type="text"
                                        class="col-sm-12 input-info"
                                        id="emailCustomer"
                                        name="email"
                                        placeholder="email@gmail.com"
                                />
                              </div>
                            </div>

                          </div>

                          <div class="form-group row col-12">

                            <div class="col-sm-12">
                              <label>Lí do khám:</label>
                              <span class="error" id="description-error"></span>
                              <div class="input-box">
                                                <span class="before-input">
                                                    <i class="fas fa-question-circle"></i>
                                                </span>
                                <textarea
                                        class="col-sm-12 input-info"
                                        id="descriptionAppointment"
                                        name="description"
                                        rows="4"
                                        placeholder="Lí do khám"
                                ></textarea>
                              </div>
                            </div>
                            <div class="col-sm-12">
                              <label>Chẩn đoán:</label>
                              <span class="error" id="diagnosis-error"></span>
                              <div class="input-box">
                                                <span class="before-input">
                                                    <i class="fas fa-diagnoses"></i>
                                                </span>
                                <textarea
                                        class="col-sm-12 input-info"
                                        id="diagnosisAppointment"
                                        name="diagnosis"
                                        rows="2"
                                        placeholder="Chẩn đoán"
                                ></textarea>
                              </div>
                            </div>
                          </div>

                          <div class="form-group row col-12">
                            <div class="col-xl-6 col-xs-12">
                              <label>Giá khám:</label>
                              <span class="error" id="price-error"></span>
                              <div class="input-box">
                                                <span class="before-input">
                                                    <i class="fas fa-money-bill-wave"></i>
                                                </span>
                                <input
                                        type="number"
                                        class="col-sm-12 input-info"
                                        id="priceAppointment"
                                        style="border:0; border-bottom:1px solid #969696; outline:none; background-color: #fff; border-radius:0;"
                                        placeholder="Giá khám"
                                        style="padding-right: 50px;"
                                />
                                <p class="after-input text-muted">đ</p>
                              </div>

                            </div>
                            <div class="col-xl-6 col-xs-12">
                              <label>Trạng thái:</label>
                              <div class="input-box">
                                                <span class="before-input">
                                                    <i class="fas fa-info-circle"></i>
                                                </span>
                                <select name="status" id="statusAppointment" class="col-sm-12 input-info" placeholder="Trạng thái">
                                  <option value="2" style="color: rgb(196, 196, 114)">
                                    Chờ xử lý
                                  </option>
                                  <option value="3" class="text-primary">
                                    Xác nhận
                                  </option>
                                  <option value="4" class="text-danger">
                                    Từ chối
                                  </option>
                                  <option value="5" class="text-success">
                                    Khám xong
                                  </option>
                                </select>
                              </div>
                            </div>
                          </div>

                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                <button
                        type="button"
                        class="btn btn-secondary"
                        data-dismiss="modal"
                >
                  Đóng
                </button>
                <button
                        type="button"
                        id="confirm-update-appointment-btn"
                        class="btn btn-primary "
                >
                  Xác nhận
                </button>

              </div>
            </div>
          </div>
        </div>

        <%- contentFor('css') %>
        <link
                href="../admin/assets/libs/toastr/toastr.min.css"
                rel="stylesheet"
                type="text/css"
        />

        <style>
          .form-group {
            display: inline-block;
          }


          p {
            font-family: 'Roboto', sans-serif;
            color: #71b6f9;
            font-size: 16px;
            font-weight: normal;
          }

          label {
            display: inline-block;
            font-family: 'Roboto', sans-serif;
            text-transform: uppercase;
            margin-bottom: 10px;
            font-weight: bold;
            font-size: 16px;
            margin-left: 2px;
          }

          .rounded-circle.img-thumbnail.picture-form {
            display: flex;
            position: absolute;
            left: 50%;
            transform: translate(-50%);
            width: 100px;
            height: 100px;
          }

          .input-box{
            position: relative;
          }

          .before-input{
            max-width: fit-content;
            position: absolute;
            z-index: 1;
            font-size: 1.1em;
            left: 7px;
            top:50%;
            transform: translateY(-70%);
          }

          .after-input{
            max-width: fit-content;
            position: absolute;
            z-index: 1;
            font-size: 1.1em;
            right: 7px;
            top:50%;
            transform: translateY(-70%);

          }

          .col-sm-12.input-info {
            padding: 7px 20px 7px 34px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 10px;
            background-color: #ffffff;
          }

          .col-sm-12.input-info:focus {
            outline:none;
            border: 2px solid #71b6f9 !important;
            border-radius: 5px !important;
            box-shadow: 0 0 5px #71b6f9 !important;
          }

          #statusAppointment:disabled {
            outline: none;
            background-color: #e8e8e8;
            color: #1db562;
            cursor: not-allowed;
            border: none;
            border-radius: 5px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
          }


          select {
            padding: 9px 0;
          }

          input[type='radio'] {
            width: 20px;
            height: 20px;
            margin-right: 5px;
            position: relative;
            left: 1em;
            bottom: -5px;
          }

          .radioText {
            margin-left: 24px;
            font-weight: normal;
            font-size: 16px;
          }

          .radioBox {
            width: 110px;
            display: inline-block;
            margin-right: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
          }

          span.error {
            color: red;
            display: inline-block;
            font-size: 12px;
          }

          .btn.btn-sm.update-info-btn {
            text-transform: uppercase;
            padding: 7px 15px;
            margin-left: 25px;
            border-radius: 5px;
            cursor: pointer;
            box-shadow: 0px 2px 4px 0px rgb(0, 0, 0, 0.2);
            margin-top: 15px;
          }

          .btn.btn-sm.edit-btn {
            background-color: #ccc;
            color: #000000;
            padding: 7px 15px;
            margin-left: 10px;
            border-radius: 50px;
            border: 0;
            cursor: pointer;
            box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, 0.2);
            margin-top: 27px;
          }
        </style>

        <%- contentFor('js') %>
        <script src="../admin/assets/libs/toastr/toastr.min.js"></script>
        <script src="../admin/assets/js/pages/toastr.init.js"></script>

        <script>
          $(document).ready(function () {
            toastr.options = {
              closeButton: true,
              debug: false,
              newestOnTop: false,
              progressBar: false,
              positionClass: 'toast-bottom-left',
              preventDuplicates: true,
              onclick: null,
              showDuration: '300',
              hideDuration: '1000',
              timeOut: '5000',
              extendedTimeOut: '1000',
              showEasing: 'swing',
              hideEasing: 'linear',
              showMethod: 'fadeIn',
              hideMethod: 'fadeOut',
            };

            function updateStatusAppointment(appointmentId, currentBtn, status) {
              let statusString = '';
              if(status == 3){
                statusString = 'Xác nhận';
              } else if(status == 4){
                statusString = 'Từ chối';
              }

              $.ajax({
                method: 'POST',
                url: '/nurse/appointments/' + appointmentId + '/update-status-appointment',
                data: { status: status },
                success: function (response) {
                  $('#ModalApprove').hide();
                  $('#ModalDecline').hide();
                  $('body').removeClass('modal-open');
                  $('.modal-backdrop').remove();

                  let currentRow = currentBtn.closest('tr');
                  currentRow.find('td:eq(-2)').text(statusString);
                  currentRow.find('td:eq(-2)').removeClass('text-warning');
                  if(status == 3){
                    currentRow.find('td:eq(-2)').addClass('text-primary');
                  } else if(status == 4){
                    currentRow.find('td:eq(-2)').addClass('text-danger');
                  }

                  currentRow.find('td:eq(-1)').find('.action-1').css('display', 'none');
                  currentRow.find('td:eq(-1)').find('.action-2').css('display', 'block');

                  toastr['success'](
                          statusString + ' đơn đặt khám thành công',
                          'Thành công'
                  );
                },
                error: function (xhr, status, error) {
                  toastr['error'](
                          'Không thể ' + statusString + ' đơn đặt khám này',
                          'Thất bại'
                  );
                },
              });
            }

            function updateAppointment(appointmentId, currentBtn) {
              const name = $('#nameCustomer').val();
              const birthday = $('#birthdayCustomer').val();
              const gender = $('#male').is(':checked') ? true : false;
              const phone_number = $('#phone_numberCustomer').val();
              const email = $('#emailCustomer').val();
              const diagnosis = $('#diagnosisAppointment').val();
              const description = $('#descriptionAppointment').val();
              const price = $('#priceAppointment').val();
              const status = $('#statusAppointment').val();

              let statusString = '';
              if(status == 3) {
                statusString = 'Xác nhận';
              } else if(status == 4) {
                statusString = 'Từ chối';
              } else if(status == 5) {
                statusString = 'Khám xong';
              } else if (status == 2) {
                statusString = 'Chờ xử lý';
              }

              const user_name = $('#appointment-management').data('id');

              const data = {
                appointment: {
                  diagnosis: diagnosis,
                  description: description,
                  price: price,
                  status: status,
                  customer: {
                    name: name,
                    birthday: birthday,
                    gender: gender,
                    phone_number: phone_number,
                    email: email
                  }
                }
              };

              $.ajax({
                method: 'POST',
                url: '/nurse/appointments/' + appointmentId + '/update-appointment',
                data: JSON.stringify(data),
                contentType: 'application/json',
                success: function (response) {
                  $('#ModalAppointment').hide();
                  $('body').removeClass('modal-open');
                  $('.modal-backdrop').remove();



                  let currentRow = currentBtn.closest('tr');
                  currentRow.find('td:eq(0)').text(name);
                  currentRow.find('td:eq(1)').text(phone_number);
                  currentRow.find('td:eq(2)').text(email);
                  currentRow.find('td:eq(4)').text(price);
                  currentRow.find('td:eq(5)').text(user_name);

                  currentRow.find('td:eq(-2)').text(statusString);
                  currentRow.find('td:eq(-2)').removeClass('text-primary');
                  currentRow.find('td:eq(-2)').removeClass('text-danger');
                  currentRow.find('td:eq(-2)').removeClass('text-success');
                  if(status == 3){
                    currentRow.find('td:eq(-2)').addClass('text-primary');
                  } else if(status == 4){
                    currentRow.find('td:eq(-2)').addClass('text-danger');
                  } else if(status == 5){
                    currentRow.find('td:eq(-2)').addClass('text-success');
                  } else if (status == 2){
                    currentRow.find('td:eq(-2)').css('color', 'rgb(196, 196, 114)');
                  }

                  toastr['success'](
                          'Cập nhật đơn khám thành công',
                          'Thành công'
                  );
                },
                error: function (xhr, status, error) {
                  toastr['error'](
                          'Không thể cập nhật đơn khám này',
                          'Thất bại'
                  );
                },
              });
            }

            $('.select-filter').change(function () {
              $('#form-filter').submit();
            });

            $('.update-appointment-btn').click(function (e)  {
              e.preventDefault();

              let appointmentId = $(this).data('id');
              let currentBtn = $(this);
              $.ajax({
                method: 'GET',
                url: '/nurse/appointments/' + appointmentId,
                dataType: 'json',
                success: function (response) {
                  const appointment = response.data.appointment;

                  let phone = appointment.customer.phone_number;
                  $('#doctor').text(response.data.doctor_rank + ' ' + appointment.schedule.doctor.user.name);
                  $('#shift').text(appointment.schedule.shift.start_time.slice(0, -3) + ' - ' + appointment.schedule.shift.end_time.slice(0, -3));
                  $('#day').text(response.data.appointment_day + ', ' + new Date(appointment.schedule.date).toLocaleDateString('en-GB'));
                  $('#nameCustomer').val(appointment.customer.name);
                  $('#birthdayCustomer').val(appointment.customer.birthday);
                  if (appointment.customer.gender) {
                    $('#male').prop('checked', true);
                  } else {
                    $('#female').prop('checked', true);
                  }
                  $('#phone_numberCustomer').val(phone);
                  $('#emailCustomer').val(appointment.customer.email);
                  $('#diagnosisAppointment').val(appointment.diagnosis);
                  $('#descriptionAppointment').val(appointment.description);
                  $('#priceAppointment').val(appointment.price);
                  $('#statusAppointment').val(appointment.status);
                  if (appointment.schedule.doctor.user.avatar) {
                    $('#doctor-avatar').attr('src', appointment.schedule.doctor.user.avatar);
                  } else {
                    $('#doctor-avatar').attr('src', 'https://api.dicebear.com/6.x/initials/svg?seed=' + appointment.schedule.doctor.user.name);
                  }

                  if(response.data.expired){
                    $('#statusAppointment').prop('disabled', true);
                    if(appointment.status == 4) $('#statusAppointment').css('color', 'rgb(255, 0, 0)');
                    else if(appointment.status == 5) $('#statusAppointment').css('color', 'rgb(56, 173, 107)');
                    else if (appointment.status == 3) $('#statusAppointment').css('color', 'rgb(0, 0, 255)');
                    else $('#statusAppointment').css('color', 'rgb(48, 76, 6)');
                  } else {
                    $('#statusAppointment').prop('disabled', false);
                    $('#statusAppointment').css('color', 'rgb(0, 0, 0)');
                  }
                },
                error: function (xhr, status, error) {
                  toastr['error'](
                          'Không thể xem thông tin đơn khám này',
                          'Thất bại'
                  );
                },
              });

              $('#confirm-update-appointment-btn').off('click').on('click', function (e) {
                e.preventDefault();

                let valid = true;

                if ($('#nameCustomer').val() === '') {
                  valid = false;
                  $('#name-error').html('Vui lòng không để trống tên khách hàng');
                } else {
                  $('#name-error').html('');
                }

                if ($('#male').is(':checked') === false && $('#female').is(':checked') === false) {
                  valid = false;
                  $('#gender-error').html('Giới tính không hợp lệ');
                } else {
                  $('#gender-error').html('');
                }

                if ($('#birthdayCustomer').val() === '') {
                  valid = false;
                  $('#birthday-error').html('Ngày sinh không hợp lệ');
                } else {
                  $('#birthday-error').html('');
                }

                if ($('#phone_numberCustomer').val() === '' || $('#phone_numberCustomer').val().length < 10) {
                  valid = false;
                  $('#phone-error').html('Số điện thoại không hợp lệ');
                } else {
                  $('#phone-error').html('');
                }

                if ($('#emailCustomer').val() === '') {
                  valid = false;
                  $('#email-error').html('Vui lòng nhập email');
                } else if (!$('#emailCustomer').val().match(/^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/)) {
                  valid = false;
                  $('#email-error').html('Email không hợp lệ');
                } else {
                  $('#email-error').html('');
                }

                if (valid) {
                  updateAppointment(appointmentId, currentBtn);

                  $.ajax({
                    url: '/nurse/statistic',
                    method: 'GET',

                    success: function (response) {
                      $('#today-appointment').text(response.data.todayAppointments);
                      $('#pending-appointment').text(response.data.pendingAppointments);
                      $('#today-completed-appointment').text(response.data.todayCompletedAppointments);
                      $('#current-month-appointment').text(response.data.currentMonthAppointments);
                    },
                    error: function (xhr, status, error) {
                      toastr['error'](
                              'Không thể xem thống kê đơn khám',
                              'Thất bại'
                      );
                    },
                  });
                }
              });
            });
          });
        </script>


      <%--        -------------------------------------------------------------------------------------------%>
      </div>
      <!-- container-fluid -->
    </div>

    <!-- Footer Start -->
    <jsp:include page="layout/footer.jsp"></jsp:include>
    <!-- end Footer -->
  </div>

  <!-- ============================================================== -->
  <!-- End Page content -->
  <!-- ============================================================== -->
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="employer/assets/js/vendor.min.js"></script>
<script src="employer/assets/js/app.min.js"></script>
</body>
</html>

