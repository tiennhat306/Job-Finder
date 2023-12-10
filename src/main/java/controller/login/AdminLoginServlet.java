package controller.login;

import DTO.AdminSessionItem;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.bo.AdminBO;
import model.bo.CandidateBO;

import java.io.IOException;

@WebServlet(name = "AdminLoginServlet", value = "/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getServletContext().getRequestDispatcher("AnotherLoginServlet");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("AdminLoginServlet doPost");
        String username = request.getParameter("username").trim();
        String password = request.getParameter("password").trim();

        AdminSessionItem adminSessionItem = new AdminBO().validateAdmin(username, password);
        if(adminSessionItem != null){
            HttpSession session = request.getSession();
            session.setAttribute("adminSession", adminSessionItem);


            response.sendRedirect(request.getContextPath() + "/AdminHomepageServlet");
        } else {
            request.setAttribute("errorMessage", "Invalid email or password");
            RequestDispatcher rd = request.getServletContext().getRequestDispatcher("/candidate/another-login.jsp");
            rd.forward(request, response);
        }
    }
}
