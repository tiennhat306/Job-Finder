package controller.signup;

import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;

import DTO.CandidateSessionItem;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.bo.CandidateBO;

@WebServlet(name = "CandidateSignUpServlet", value = "/CandidateSignUpServlet")
public class CandidateSignUpServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	RequestDispatcher rd = request.getServletContext().getRequestDispatcher("/candidate/signUpCandidate.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("signUpCandidate") != null) {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String phoneNumber = request.getParameter("phone");
			String gender = request.getParameter("gender");
			Boolean newGender = Boolean.parseBoolean(gender);
			String birthday = request.getParameter("birthday");
			Date newBirthday = Date.valueOf(birthday);
			
			Timestamp createdAt = new Timestamp(System.currentTimeMillis());
			Timestamp updatedAt = new Timestamp(System.currentTimeMillis());
			
			CandidateBO candidateBO = new CandidateBO();
			boolean result = candidateBO.createAccount(name, email, password, phoneNumber, newGender, newBirthday, createdAt, updatedAt);
			if(result) {
				CandidateSessionItem candidateSessionItem = (CandidateSessionItem) request.getSession().getAttribute("candidateSession");
				if(candidateSessionItem != null){
					request.getSession().removeAttribute("candidateSession");
				}

				CandidateSessionItem candidateSessionItemNew = candidateBO.validateCandidate(email, password);

				HttpSession session = request.getSession();
				session.setAttribute("candidateSession", candidateSessionItemNew);

				// call homepage servlet
				response.sendRedirect(request.getContextPath() + "/CandidateHomepageServlet");
			} else {
				request.setAttribute("errorMessage", "Invalid email or password");
				RequestDispatcher rd = request.getServletContext().getRequestDispatcher("/candidate/signUpCandidate.jsp");
				rd.forward(request, response);
			}

		}
    }
}
