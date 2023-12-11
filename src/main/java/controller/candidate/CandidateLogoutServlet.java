package controller.candidate;

import DTO.CandidateSessionItem;
import DTO.EmployerSessionItem;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "CandidateLogoutServlet", value = "/CandidateLogoutServlet")
public class CandidateLogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CandidateSessionItem candidateSessionItem = (CandidateSessionItem) request.getSession().getAttribute("candidateSession");
        if(candidateSessionItem == null){
            response.sendRedirect(request.getContextPath() + "/CandidateLoginServlet");
            return;
        }

        request.getSession().removeAttribute("candidateSession");
        response.sendRedirect(request.getContextPath() + "/CandidateLoginServlet");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
