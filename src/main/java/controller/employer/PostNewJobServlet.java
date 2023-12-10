package controller.employer;

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
import model.bo.JobBoardBO;

@WebServlet(name = "PostNewJobServlet", value = "/PostNewJobServlet")
public class PostNewJobServlet extends HttpServlet{
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	RequestDispatcher rd = request.getServletContext().getRequestDispatcher("/employer/stage1.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	if (request.getParameter("buttonSaveStage1") != null) {
            // Retrieve data from the form
            String title = request.getParameter("title");
            String code = request.getParameter("code");
            String companyName = request.getParameter("companyName");
            String companyDescription = request.getParameter("summary");
            int companySize = Integer.parseInt(request.getParameter("employeeNumber"));
            
            String website = request.getParameter("Website");

            Timestamp postingTimestamp = new Timestamp(System.currentTimeMillis());
            Timestamp expirationTimestamp = new Timestamp(System.currentTimeMillis());

            // Convert to java.sql.Date
            java.sql.Date postingDate = new java.sql.Date(postingTimestamp.getTime());
            java.sql.Date expirationDate = new java.sql.Date(expirationTimestamp.getTime());

            // Call the DAO method to create a job
            JobBoardBO jobBoardBO = new JobBoardBO();
            jobBoardBO.createJob(
                    title, code, companyName, companySize, companyDescription, website,
                    1, "empty", 1, 1, 1, 1.0, 1.0, 1, 1, 1, 1, "empty", 1, 1, 1, "empty",
                    "empty", "empty", "empty", "empty", "empty", postingDate, expirationDate, 1, 1, 1, "empty"
            );

            // Forward to the desired page
//            RequestDispatcher dispatcher = request.getRequestDispatcher("employer/cvManagement.jsp");
            RequestDispatcher dispatcher = request.getRequestDispatcher("candidate/login.jsp");
            dispatcher.forward(request, response);
        }
    }
}
