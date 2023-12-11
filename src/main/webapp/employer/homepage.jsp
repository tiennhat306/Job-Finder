<%@ page import="DTO.EmployerSessionItem" %>
<%@ page import="DTO.MyJobBoardItem" %>
<%@ page import="java.util.List" %>
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
    <link
            href="employer/assets/libs/toastr/toastr.min.css"
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



        span.error {
            color: red;
            display: inline-block;
            font-size: 12px;
        }

        .btn.btn-sm.confirm-remove-btn {
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
                  <h2 class="font-weight-normal pt-2 mb-1 text-danger" id="today-jobboard">
                    <%
                      int todayJobBoard = (int) request.getAttribute("todayJobBoard");
                    %>
                    <%= todayJobBoard %>
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
                  <h2 class="font-weight-normal pt-2 mb-1 text-warning" id="last-month-jobboard">
                    <%
                      int lastMonthJobBoard = (int) request.getAttribute("lastMonthJobBoard");
                    %>
                    <%= lastMonthJobBoard %>
                  </h2>
                  <p class="text-muted mb-1">Bài tuyển dụng</p>
                </div>
              </div>
            </div>
          </div>
          <!-- end col -->
          <div class="col-xl-4 col-md-6">
            <div class="card-box">
              <h4 class="header-title mt-0 mb-3">Tuyển dụng trong tháng</h4>
              <div class="widget-box-2">
                <div class="widget-detail-2 text-right">
                    <%
                        int currentMonthJobBoard = (int) request.getAttribute("currentMonthJobBoard");
                        double differencePercent = (double) (currentMonthJobBoard - lastMonthJobBoard) / lastMonthJobBoard * 100;
                    %>
                    <% if (differencePercent > 0) { %>
                    <span class="badge badge-success badge-pill float-left mt-3"
                    ><%= differencePercent %>
						<i class="mdi mdi-trending-up"></i>
					</span>
                    <% } else { %>
                    <span class="badge badge-danger badge-pill float-left mt-3">
						<%= differencePercent * -1 %>
						<i class="mdi mdi-trending-down"></i>
					</span>
                    <% } %>
                  <h2 class="font-weight-normal pt-2 mb-1 text-primary" id="current-month-jobboard">
                    <%= currentMonthJobBoard %>
                  </h2>
                  <p class="text-muted mb-1">Bài tuyển dụng</p>
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
                <div class="row col-sm-12 col-xl-12 form-group">
                  <div class="form-group col-sm-4 col-xl-4">
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
                        <option value="0" selected>Tất cả</option>
                        <option value="1" <% if (selectedStatus == 1) { %> selected <% } %>>Chờ xử lý</option>
                        <option value="2" <% if (selectedStatus == 2) { %> selected <% } %>>Được duệt</option>
                        <option value="3" <% if (selectedStatus == 3) { %> selected <% } %>>Từ chối</option>
                        <option value="4" <% if (selectedStatus == 4) { %> selected <% } %>>Chờ đăng bài</option>
                        <option value="5" <% if (selectedStatus == 5) { %> selected <% } %>>Hết hạn</option>
                      </select>
                    </div>
                  </div>

                  <div class="form-group col-sm-5 col-xl-5">
                    <div class="col-md-1 mb-1 ml-0 pl-0 mb-1 form-group">
                      <div class="form-group app-search-box">
                        <div class="input-group">
                          <%
                            String search = (String) request.getAttribute("search");
                            if (search == null) { %>
                          <input
                                  type="text"
                                  class="form-control"
                                  name="search"
                                  placeholder="Nhập tên để tìm kiếm..."
                          />
                          <% } else { %>
                          <input
                                  type="text"
                                  class="form-control"
                                  name="search"
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

                    <div class="form-group col-sm-3">
                        <div class="mb-2">
                            <a href="#" class="btn btn-primary">
                                <i class="fe-plus-circle"></i> Thêm mới
                            </a>
                        </div>
                    </div>
                </div>
              </form>

              <div class="table-responsive">
                <table id="jobboard-table" class="table table-bordered table-hover mb-0 text-center">
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
                    List<MyJobBoardItem> myJobBoardList = (List<MyJobBoardItem>) request.getAttribute("myJobBoardList");
                    if (myJobBoardList.size() != 0) { %>
                    <% for (MyJobBoardItem myJobBoard : myJobBoardList) { %>
                  <tr >
<%--                    <th scope="row"><%= myJobBoard.getId() %></th>--%>
                    <% if (myJobBoard.getStatus() == 1 ) { %>
                    <td class="text-secondary">Chờ xử lý</td>
                    <% } else if (myJobBoard.getStatus() == 2 ) { %>
                    <td class="text-primary">Được duyệt</td>
                    <% } else if (myJobBoard.getStatus() == 3 ) { %>
                    <td class="text-danger">Từ chối</td>
                    <% } else if (myJobBoard.getStatus() == 4 ) { %>
                    <td style="color: rgb(196, 196, 114)">Chờ đăng bài</td>
                    <% } else if (myJobBoard.getStatus() == 5) { %>
                    <td class="text-success">Hết hạn</td>
                    <% } %>
                    <td><%= myJobBoard.getTitle() %></td>
                    <td><%= myJobBoard.getNoOfApplicants() %></td>
                    <td><%= myJobBoard.getViews() %></td>
                    <td><%= myJobBoard.getPostingDate() %></td>
                    <td><%= myJobBoard.getExpirationDate() %></td>
                    <td>
<%--                      Đạt  //TODO: add update function--%>
<%--                      <div class="action action-2">--%>
<%--                        <button--%>
<%--                                class="btn btn-sm btn-primary"--%>
<%--&lt;%&ndash;                                data-toggle="modal"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                data-target="#ModalAppointment"&ndash;%&gt;--%>
<%--                                data-id="<%= myJobBoard.getId() %>"--%>
<%--                        >--%>
<%--                          <a href="#" class="text-dark"><i class="fas fa-edit"></i></a>--%>
<%--                        </button>--%>
<%--                      </div>--%>
                        <% if (myJobBoard.getStatus() == 1) { %>
                        <div class="action action-2">
                          <button
                                  class="btn btn-sm btn-primary"
                                  data-id="<%= myJobBoard.getId() %>"
                          >
                            <a href="#" class="text-dark"><i class="fas fa-edit">Sửa</i></a>
                          </button>
                        </div>
                        <% } else {%>
                            <div class="action action-2">
                                <button
                                        class="btn btn-sm btn-danger remove-jobboard"
                                        data-toggle="modal"
                                        data-target="#ModalJobboard"
                                        data-id="<%= myJobBoard.getId() %>"
                                >
                                    <i class="fas fa-trash text-dark"> Xóa</i>
                                </button>
                            </div>
                        <% } %>

                    </td>
                  </tr>
                  <% } %> <% } else { %>
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
                      <% int current = (int) request.getAttribute("current"); %>
                        <% int pages = (int) request.getAttribute("pages"); %>
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
                                  href="EmployerHomepageServlet?page=1&status=<%=selectedStatus%>&search=<%=search%>"
                                  tabindex="-1"
                          >
                            Đầu
                          </a>
                        </li>
                        <% } %>
                        <% var i = current > 5 ? current - 4 : 1; %> <% if (i != 1) { %>
                        <li class="page-item disabled">
                          <a class="page-link">...</a>
                        </li>
                        <% } %> <% for (; i <= pages && i <= current + 4; i++) {
                      %> <% if (i == current) { %>
                        <li class="page-item active">
                          <a class="page-link"><%=i%></a>
                        </li>
                        <% } else { %>
                        <li class="page-item">
                          <a
                                  class="page-link"
                                  href="EmployerHomepageServlet?page=<%= i %>&status=<%=selectedStatus%>&search=<%=search%>"
                          ><%=i%>
                          </a>
                        </li>
                        <% } %> <% if (i == current + 4 && i < pages ) { %>
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
                                  href="EmployerHomepageServlet?page=<%= pages %>&status=<%=selectedStatus%>&search=<%=search%>"
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

        <!-- Modal -->
          <div
                  class="modal fade"
                  id="ModalJobboard"
                  tabindex="-1"
                  role="dialog"
                  aria-labelledby="myModalLabel"
          >
              <div class="modal-dialog" role="document">
                  <div class="modal-content">
                      <div class="modal-header">
                          <h4 class="modal-title" id="myModalLabel">Thông báo</h4>
                          <button
                                  type="button"
                                  class="close"
                                  data-dismiss="modal"
                                  aria-label="Close"
                          >
                              <span aria-hidden="true">&times;</span>
                          </button>
                      </div>
                      <div class="modal-body text-center">
                          <p>Xác nhận xóa tin tuyển dụng này ?</p>
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
                                  id="confirm-remove-btn"
                                  type="button"
                                  class="btn btn-primary"
                          >
                              Xác nhận
                          </button>
                      </div>
                  </div>
              </div>
          </div>



          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
          <script src="employer/assets/js/vendor.min.js"></script>
          <script src="employer/assets/js/app.min.js"></script>
          <script src="employer/assets/libs/toastr/toastr.min.js"></script>
          <script src="employer/assets/js/pages/toastr.init.js"></script>

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


                  function removeJobboard(currentBtn) {
                      var jobboardId = $('#ModalJobboard').data('id');
                      console.log("jobboardId: " + jobboardId);
                      $.ajax({
                          method: 'POST',
                          url: 'RemoveJobboardServlet?id=' + jobboardId,
                          success: function (response) {
                              console.log("response: " + response);
                              $('#ModalJobboard').hide();
                              $('body').removeClass('modal-open');
                              $('.modal-backdrop').remove();

                              // remove the current row
                              let currentRow = currentBtn.closest('tr');
                              currentRow.remove();

                              toastr['success'](
                                  'Xóa tin tuyển dụng thành công',
                                  'Thành công'
                              );
                          },
                          error: function (xhr, status, error) {
                              console.log("response: " + response);

                              toastr['error'](
                                  'Không thể xóa tin tuyển dụng này',
                                  'Thất bại'
                              );
                          },
                      });
                  }

                  $('.select-filter').change(function () {
                      $('#form-filter').submit();
                  });

                  $('.remove-jobboard').click(function () {
                      var jobboardId = $(this).data('id');
                      let currentBtn = $(this);
                      $('#ModalJobboard').data('id', jobboardId).modal('show');

                      $('#confirm-remove-btn').click(function () {

                          removeJobboard(currentBtn);
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


</body>
</html>

