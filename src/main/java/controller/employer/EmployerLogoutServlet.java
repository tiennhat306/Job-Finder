package controller.employer;

import DTO.EmployerSessionItem;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "EmployerLogoutServlet", value = "/EmployerLogoutServlet")
public class EmployerLogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EmployerSessionItem employerSessionItem = (EmployerSessionItem) request.getSession().getAttribute("employerSession");
        if(employerSessionItem == null){
            response.sendRedirect(request.getContextPath() + "/ErrorServlet");
            return;
        }

        request.getSession().removeAttribute("employerSession");
        request.getSession().removeAttribute("adminSession");
        response.sendRedirect(request.getContextPath() + "/EmployerLoginServlet");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
