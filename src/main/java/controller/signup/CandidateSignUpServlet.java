package controller.signup;

import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
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
			candidateBO.createAccount(name, email, password, phoneNumber, newGender, newBirthday, createdAt, updatedAt);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/candidate/login.jsp");
			dispatcher.forward(request, response);
		}
    }
}
