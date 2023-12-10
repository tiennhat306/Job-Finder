package controller.login;

import DTO.CandidateSessionItem;
import DTO.EmployerSessionItem;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.bo.CandidateBO;
import model.bo.EmployerBO;

import java.io.IOException;

@WebServlet(name = "EmployerLoginServlet", value = "/EmployerLoginServlet")
public class EmployerLoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getServletContext().getRequestDispatcher("AnotherLoginServlet");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("EmployerLoginServlet doPost");
        String username = request.getParameter("username").trim();
        String password = request.getParameter("password").trim();

        EmployerSessionItem employerSessionItem = new EmployerBO().validateEmployer(username, password);
        if(employerSessionItem != null){
            HttpSession session = request.getSession();
            session.setAttribute("employerSession", employerSessionItem);

            response.sendRedirect(request.getContextPath() + "/EmployerHomepageServlet");
        } else {
            request.setAttribute("errorMessage", "Invalid email or password");
            RequestDispatcher rd = request.getServletContext().getRequestDispatcher("/candidate/another-login.jsp");
            rd.forward(request, response);
        }
    }
}
