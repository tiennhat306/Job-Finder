package controller.admin;

import DTO.AdminSessionItem;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.bean.Admin;
import model.bo.AdminBO;

import java.io.IOException;
import java.util.Date;

@WebServlet(name = "AdminAccountServlet", value = "/AdminAccountServlet")
public class AdminAccountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminSessionItem adminSessionItem = (AdminSessionItem) request.getSession().getAttribute("adminSession");
        if(adminSessionItem == null){
            response.sendRedirect(request.getContextPath() + "/AdminLoginServlet");
            return;
        }

        int adminId = adminSessionItem.getId();
        Admin admin = new AdminBO().getAdminById(adminId);
        request.setAttribute("admin", admin);
        RequestDispatcher rd = request.getServletContext().getRequestDispatcher("/admin/account.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // get data from form
        // AdminAccountServlet?name=%C3%89t+%C4%91%E1%BB%9D+min&avatar=&birthday=2003-06-30&gender=1&phone_number=0123456789&email=admin%40gmail.com&old_password=&new_password=&confirm_password=:1060

        AdminSessionItem adminSessionItem = (AdminSessionItem) request.getSession().getAttribute("adminSession");
        if(adminSessionItem == null){
            response.sendRedirect(request.getContextPath() + "/AdminLoginServlet");
            return;
        }

        int adminId = adminSessionItem.getId();
        String name = request.getParameter("name");
//        String avatar = request.getParameter("avatar");
        String email = request.getParameter("email").trim();
        String phoneNumber = request.getParameter("phone_number").trim();
        String birthday = request.getParameter("birthday");
        Date birthdayDate = null;
        birthdayDate = java.sql.Date.valueOf(birthday);

        String gender = request.getParameter("gender");
        int genderInt = Integer.parseInt(gender);
        boolean genderBoolean = genderInt != 0;

        System.out.println("name: " + name);
        System.out.println("email: " + email);
        System.out.println("phoneNumber: " + phoneNumber);
        System.out.println("birthday: " + birthday);


        new AdminBO().updateAdminInfo(adminId, name, email, phoneNumber, birthdayDate, genderBoolean);


        String username = request.getParameter("username");
        if(username != null && !username.trim().isEmpty()){
            new AdminBO().updateAdminUsername(adminId, username);
        }

        String oldPassword = request.getParameter("old_password");

        String newPassword = request.getParameter("new_password");
        String confirmPassword = request.getParameter("confirm_password");

        if(oldPassword != null && !oldPassword.trim().isEmpty() && newPassword != null && !newPassword.trim().isEmpty() && confirmPassword != null && !confirmPassword.trim().isEmpty()){
            boolean isValid = new AdminBO().validateAdminPassword(adminId, oldPassword);
            if(isValid && newPassword.equals(confirmPassword)){
                new AdminBO().updateAdminPassword(adminId, newPassword);
            } else {
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                try {
                    response.getWriter().write("{\"error\" :" +  !isValid + "}");
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }


    }
}
