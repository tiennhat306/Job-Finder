package controller.login;

import DTO.CandidateSessionItem;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.bo.CandidateBO;

import java.io.IOException;

@WebServlet(name = "CandidateLoginServlet", value = "/CandidateLoginServlet")
public class CandidateLoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        doPost(request, response);
        RequestDispatcher rd = request.getServletContext().getRequestDispatcher("/candidate/login.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("username").trim();
        String password = request.getParameter("password").trim();

        CandidateSessionItem candidateSessionItem = new CandidateBO().validateCandidate(email, password);
        if(candidateSessionItem != null){
            HttpSession session = request.getSession();
            session.setAttribute("candidateSession", candidateSessionItem);

            // return to before login page by using referer
            String referer = request.getHeader("Referer");
            if(referer != null && !referer.contains("CandidateLoginServlet")){
                response.sendRedirect(referer);
                return;
            }

            // call homepage servlet
            response.sendRedirect(request.getContextPath() + "/CandidateHomepageServlet");
        } else {
            request.setAttribute("errorMessage", "Invalid email or password");
            RequestDispatcher rd = request.getServletContext().getRequestDispatcher("/candidate/login.jsp");
            rd.forward(request, response);
        }
    }
}
