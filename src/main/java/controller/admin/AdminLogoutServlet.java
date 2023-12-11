package controller.admin;

import DTO.AdminSessionItem;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "AdminLogoutServlet", value = "/AdminLogoutServlet")
public class AdminLogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminSessionItem adminSessionItem = (AdminSessionItem) request.getSession().getAttribute("adminSession");
        if(adminSessionItem == null){
            response.sendRedirect(request.getContextPath() + "/AdminLoginServlet");
            return;
        }

        request.getSession().removeAttribute("adminSession");
        response.sendRedirect(request.getContextPath() + "/AdminLoginServlet");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
