<%@ page import="DTO.EmployerSessionItem" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="navbar-custom">
  <ul class="list-unstyled topnav-menu float-right mb-0">
    <li class="d-none  d-sm-block">
      <div>
        <a href="CandidateHomepageServlet" class="nav-link waves-effect d-flex">
          <i class="mdi mdi-home" style="font-size: 30px"></i>
          <span>Cho người tìm việc</span>
        </a>
      </div>
    </li>
    <li class="dropdown notification-list">
      <a
              class="nav-link dropdown-toggle nav-user mr-0 waves-effect"
              data-toggle="dropdown"
              href="#"
              role="button"
              aria-haspopup="false"
              aria-expanded="false"
      >
        <%
          EmployerSessionItem authUser = (EmployerSessionItem) session.getAttribute("employerSession");
          if (!authUser.getLogo().equals("")) {
        %>
        <img
                src="<%= authUser.getLogo() %>"
                alt="user-image"
                class="rounded-circle"
        />
        <% } else { %>
        <img
                src="https://api.dicebear.com/6.x/initials/svg?seed=<%= authUser.getCompanyName() %>"
                alt="user-image"
                class="rounded-circle"
        />
        <% } %>

        <span class="pro-user-name ml-1">
					<%= authUser.getCompanyName() %>
					<i class="mdi mdi-chevron-down"></i>
				</span>
      </a>
      <div class="dropdown-menu dropdown-menu-right profile-dropdown">
        <!-- item-->
        <div class="dropdown-header noti-title">
          <h6 class="text-overflow m-0">Xin chào !</h6>
        </div>

        <!-- item-->
        <a href="EmployerAccount" class="dropdown-item notify-item">
          <i class="fe-user"></i>
          <span>Tài khoản</span>
        </a>

        <div class="dropdown-divider"></div>

        <!-- item-->
        <a href="EmployerLogoutServlet" class="dropdown-item notify-item">
          <i class="fe-log-out"></i>
          <span>Đăng xuất</span>
        </a>
      </div>
    </li>
  </ul>

  <!-- LOGO -->
  <div class="logo-box">
    <a href="CandidateHomepageServlet" class="logo text-center">
			<span class="logo-lg">
				<img src="candidate/img/logo.png" alt="" height="32" />
			</span>
    </a>
  </div>

  <ul class="list-unstyled topnav-menu topnav-menu-left m-0">
    <li>
      <button class="button-menu-mobile disable-btn waves-effect">
        <i class="fe-menu"></i>
      </button>
    </li>
  </ul>
</div>

